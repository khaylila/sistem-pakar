<?php

namespace App\Controllers;

class Home extends BaseController
{
    protected $db;

    public function __construct()
    {
        $this->db      = \Config\Database::connect();
    }

    public function index(): string
    {
        return view(
            "diagnosis",
            [
                "title" => "Diagnosis Penyakit",
                "listGejala" => $this->db->table("gejala")->get()->getResultArray(),
            ]
        );
    }

    public function viewDiagnosis(): string
    {
        $listDiagnosis = [];
        foreach ($this->db->table("penyakit")->get()->getResultArray() as $penyakit) :
            // mengambil jumlah gejala
            $jmlGejala = $this->db->table("basis_aturan")->select("COUNT(basis_aturan.id_penyakit) AS jml_gejala")->join("detail_basis_aturan", "basis_aturan.id_aturan = detail_basis_aturan.id_aturan")->where("basis_aturan.id_penyakit", $penyakit['id'])->get()->getFirstRow()->jml_gejala;
            $tempGejala = 0;

            // mencari gejala pada basis aturan
            foreach ($this->db->table("basis_aturan")->select("id_penyakit, id_gejala")->join("detail_basis_aturan", "basis_aturan.id_aturan = detail_basis_aturan.id_aturan")->where("basis_aturan.id_penyakit", $penyakit['id'])->get()->getResultArray() as $gejalaPadaPenyakit) :
                // membandingkan gejala
                if (in_array((string)$gejalaPadaPenyakit['id_gejala'], $this->request->getPost()['selectGejala'])) :
                    $tempGejala++;
                endif;
            endforeach;
            // mencari presentase
            if ($jmlGejala > 0) {
                $peluang = round($tempGejala / $jmlGejala * 100, 2);
            } else {
                $peluang = 0;
            }

            if ($peluang > 0) :
                // $penyakit["nama"];
                $listDiagnosis[] = ["namaPenyakit" => $penyakit["nama"], "peluang" => $peluang];
            endif;

        endforeach;

        return view(
            "hasil_diagnosis",
            [
                "title" => "Hasil Diagnosis Penyakit",
                "listGejala" => $this->db->table("gejala")->whereIn("id_gejala", $this->request->getPost()['selectGejala'])->get()->getResultArray(),
                "listDiagnosis" => $listDiagnosis,
                "pasienName" => $this->request->getPost()['pasienName'],
            ]
        );
    }

    public function viewPenyakit(): string
    {
        return view(
            "penyakit",
            [
                "title" => "Daftar Penyakit",
                "listPenyakit" => $this->db->table("penyakit")->get()->getResultArray(),
            ]
        );
    }

    public function viewGejala(): string
    {
        return view(
            "gejala",
            [
                "title" => "Daftar Gejala",
                "listGejala" => $this->db->table("gejala")->get()->getResultArray(),
            ]
        );
    }
}
