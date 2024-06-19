<?= $this->extend('temp') ?>

<?= $this->section('content') ?>
<div class="row justify-content-center">
  <div class="col-md-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Hasil Diagnosis Penyakit</h5>

        <div class="form-floating mb-3">
          <input type="text" class="form-control-plaintext" id="pasienName" value="<?= $pasienName; ?>">
          <label for="pasienName">Nama Pasien</label>
        </div>

        <h6>Daftar Gejala yang Dialami</h6>
        <div class="px-4 mb-3">
          <table class="table table-hover border">
            <thead>
              <tr>
                <th class="text-center" scope="col">No</th>
                <th class="text-center" scope="col">Gejala</th>
              </tr>
            </thead>
            <tbody>
              <?php $i = 1; ?>
              <?php foreach ($listGejala as $gejala) : ?>
                <tr>
                  <th class="text-center" scope="row"><?= $i++ ?></th>
                  <td><?= $gejala['nama']; ?></td>
                </tr>
              <?php endforeach; ?>
            </tbody>
          </table>
        </div>

        <h6>Hasil Diagnosa</h6>
        <div class="px-4 mb-3">
          <table class="table table-hover border">
            <thead>
              <tr>
                <th class="text-center" scope="col">No</th>
                <th class="text-center" scope="col">Penyakit</th>
                <th class="text-center" scope="col">Persentase</th>
              </tr>
            </thead>
            <tbody>
              <?php $i = 1; ?>
              <?php foreach ($listDiagnosis as $diagnosa) : ?>
                <tr>
                  <th class="text-center" scope="row"><?= $i++ ?></th>
                  <td><?= $diagnosa['namaPenyakit']; ?></td>
                  <td class="text-center"><?= $diagnosa['peluang']; ?>%</td>
                </tr>
              <?php endforeach; ?>
            </tbody>
          </table>
        </div>


        <a href="<?= base_url(); ?>" class="btn btn-secondary my-3">kembali</a>
      </div>
    </div>

  </div>
</div>
<?= $this->endSection() ?>