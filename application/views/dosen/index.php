  <!-- page title area start -->
  <div class="page-title-area">
    <div class="row align-items-center p-3">
      <div class="col-sm-6">
        <div class="breadcrumbs-area clearfix">
          <h4 class="page-title pull-left">Dosen</h4>
          <ul class="breadcrumbs pull-left">
            <li><a href="index.html">Home</a></li>
            <li><span>Dosen</span></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <!-- page title area end -->

  <div class="main-content-inner">
    <div class="row">
      <div class="col-12 mt-5">
        <div class="card">
          <div class="card-body">
            <a href="<?= base_url('dosen/create') ?>" class="btn btn-primary btn-sm">Tambah Dosen</a>
            <h4 class="header-title"></h4>

            <div class="data-tables">
              <table id="dataTable" class="text-center">
                <thead class="bg-light text-capitalize">
                  <tr>
                    <th>No</th>
                    <th>Nama</th>
                    <th>NIP</th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                  <?php $no = 1; foreach($dosen as $key => $value) {?>
                  <tr>
                    <td><?= $no++; ?></td>
                    <td><?= $value->nama; ?></td>
                    <td><?= $value->nip; ?></td>
                    <td>
                      <a href="<?= base_url('dosen/edit/'.$value->id) ?>" class="btn btn-primary btn-sm">Edit</a>
                      <a href="<?= base_url('dosen/destroy/'.$value->id) ?>" class="btn btn-danger btn-sm">Delete</a>
                    </td>
                  </tr>
                  <?php } ?>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>