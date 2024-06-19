<?= $this->extend('temp') ?>

<?= $this->section('content') ?>
<div class="row justify-content-center">
  <div class="col-md-10">
    <table class="table table-hover border">
      <thead>
        <tr>
          <th class="text-center" scope="col">ID</th>
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
</div>
<?= $this->endSection() ?>