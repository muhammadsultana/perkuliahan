  <!-- page title area start -->
  <div class="page-title-area">
    <div class="row align-items-center p-3">
      <div class="col-sm-6">
        <div class="breadcrumbs-area clearfix">
          <h4 class="page-title pull-left">Edit MK</h4>
          <ul class="breadcrumbs pull-left">
            <li><a href="<?= base_url() ?>">Home</a></li>
            <li><a href="<?= base_url('mk') ?>">Mata Kuliah</a></li>
            <li><span>Edit</span></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <!-- page title area end -->

  <div class="main-content-inner">
    <div class="row">
      <div class="col-12 mt-5">
        <?= $this->session->flashdata('msg') ?>
        <div class="card">
          <div class="card-body">
            <form action="<?= base_url('mk/update/'.$mk->id) ?>" method="post" accept-charset="utf-8">
              <div class="row">
                <div class="col-4">
                  <label for="dosen1">Dosen 1</label>
                  <select name="dosen1" id="dosen1" class="form-control form-group" required="">
                    <option value=""></option>
                    <?php foreach ($dosen as $key => $value): ?>
                      <option value="<?= $value->id ?>"><?= $value->nama ?></option>
                    <?php endforeach ?>
                  </select>
                </div>
                <div class="col-4">
                  <label for="dosen2">Dosen 2</label>
                  <select name="dosen2" id="dosen2" class="form-control form-group">
                    <option value=""></option>
                    <?php foreach ($dosen as $key => $value): ?>
                      <option value="<?= $value->id ?>"><?= $value->nama ?></option>
                    <?php endforeach ?>
                  </select>
                </div>
                <div class="col-4">
                  <label for="kelas">Nama Kelas</label>                  
                  <select id="kelas" name="kelas" class="form-control form-group" required="">
                    <option value=""></option>
                    <?php foreach ($kelas as $key => $value): ?>
                      <option value="<?= $value->id ?>"><?= $value->nama_kelas ?></option>
                    <?php endforeach ?>
                  </select>
                </div>
              </div>
              <br>
              <div class="row">
                <div class="col-4">
                  <label for="nama_mk">Nama Mata Kuliah</label>
                  <input id="nama_mk" type="text" name="nama_mk" class="form-control form-group" required="" value="<?= $mk->nama_mk ?>">
                </div>
                <div class="col-4">
                  <label for="sks">Jumlah SKS</label>
                  <input id="sks" type="text" name="sks" class="form-control form-group" required="" value="<?= $mk->sks ?>">
                </div>
                <div class="col-4">
                  <label for="kode_mk">Kode MK</label>
                  <input id="kode_mk" type="text" name="kode_mk" class="form-control form-group" required="" value="<?= $mk->kode_mk ?>">
                </div>
                <div class="col-4">
                  <label for="lokasi">Lokasi</label>
                  <select id="lokasi" name="lokasi" class="form-control form-group" required="">
                    <option value=""></option>
                    <option value="0">BUKIT</option>
                    <option value="1">INDERALAYA</option>
                  </select>
                </div>
              </div>
              <input type="submit" class="btn btn-primary" value="Tambah MK">
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
<script type="text/javascript" charset="utf-8" defer>
  window.onload = function() {
    if (window.jQuery) {  
        // jQuery is loaded
        $("#lokasi option[value='<?= $mk->lokasi ?>']").attr('selected', 'selected');
        $('#dosen1').val('<?= $mk->dosen1 ?>');
        $('#dosen1').trigger('change');
        $('#dosen2').val('<?= $mk->dosen2 ?>');
        $('#dosen2').trigger('change');
        $('#kelas').val('<?= $mk->kelas ?>');
        $('#kelas').trigger('change');
    } else {
        // jQuery is not loaded
        alert("Doesn't Work");
    }
  }
</script>