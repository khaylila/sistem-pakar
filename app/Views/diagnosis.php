<?= $this->extend('temp') ?>

<?= $this->section('content') ?>
<div class="row justify-content-center">
  <div class="col-md-6">
    <div class="card">
      <div class="card-body">
        <form action="<?= base_url(); ?>" method="post">
          <h5 class="card-title">Diagnosis Penyakit</h5>

          <div class="form-floating mb-3">
            <input type="text" class="form-control" id="pasienName" name="pasienName" placeholder="Masukkan nama pasien">
            <label for="pasienName">Nama Pasien</label>
          </div>

          <h6>Daftar Gejala</h6>
          <div class="px-4 overflow-y-scroll mb-3" style="height: 200px;">
            <?php foreach ($listGejala as $gejala) : ?>
              <div class="form-check">
                <input class="form-check-input" id="defaultCheck<?= $gejala['id_gejala']; ?>" type="checkbox" value="<?= $gejala['id_gejala']; ?>" name="selectGejala[]">
                <label class="form-check-label" for="defaultCheck<?= $gejala['id_gejala']; ?>">
                  <?= $gejala['nama']; ?>
                </label>
              </div>
            <?php endforeach; ?>
          </div>

          <button type="submit" class="btn btn-success">Diagnosa</button>
        </form>
      </div>
    </div>

  </div>
</div>
<?= $this->endSection() ?>