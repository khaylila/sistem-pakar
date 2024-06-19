<?= $this->extend('temp') ?>

<?= $this->section('content') ?>
<div class="row justify-content-center">
  <div class="col-md-10">
    <table class="table table-hover border">
      <thead>
        <tr>
          <th class="text-center" scope="col">ID</th>
          <th class="text-center" scope="col">Penyakit</th>
          <th class="text-center" scope="col">Keterangan</th>
          <th class="text-center" scope="col">Solusi</th>
        </tr>
      </thead>
      <tbody>
        <?php $i = 1; ?>
        <?php foreach ($listPenyakit as $penyakit) : ?>
          <tr>
            <th class="text-center" scope="row"><?= $i++ ?></th>
            <td><?= $penyakit['nama']; ?></td>
            <td><?= $penyakit['keterangan'] != null ? $penyakit['keterangan'] : "-"; ?></td>
            <td><?= $penyakit['solusi'] != null ? $penyakit['solusi'] : "-"; ?></td>
          </tr>
        <?php endforeach; ?>
      </tbody>

    </table>
  </div>
</div>
<?= $this->endSection() ?>