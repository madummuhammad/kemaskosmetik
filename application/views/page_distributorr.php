    <!-- contact -->
    <style>
    table.table{background-color:#fff}
    table.table thead tr th{background-color:#f9f9f9;border-bottom-width:0}
    table.table tbody tr td{vertical-align:middle}
    table thead th{
        font-weight: bold;
    }
    table.dataTable{border-collapse:separate!important}
    .form-action{background-color:#f9f9f9;padding:10px;margin-bottom:15px;border-radius:3px}
    .modal-header button.close{font-size:30px}
    .modal-body{background-color:#f6f6f6}
    ul.nav-tabs li a{font-weight:700}
    input.input-num-table{border:none;text-align:right}
    .label-help{font-size:12px;color:#777;font-weight: normal}
    .select2-container{ width: 100% !important; }
    .select2-container .select2-selection--single {
        box-sizing: border-box;
        cursor: pointer;
        display: block;
        height: 38px;
        user-select: none;
        -webkit-user-select: none;
        transition: all 0.15s ease-in-out
    }
</style>
<div id="contact" class="section mt-5">
    <div class="container container-full p-5">
        <h1 class="text-center class mb-5">Contact Stockist</h1>
        <div class="row row-no-gutter mb-5 d-flex justify-content-center">
            <div class="col-md-12 shadow-lg m-5 p-5">
                <h4 class="text-center">Wahl Professional Wholesaler</h4>
                <div class="table-responsive">
                    <table class="table table-hover" width="100%" id="wholesaler">
                        <thead>
                            <tr>
                                <th>Shop Name</th>
                                <th>Address</th>
                                <th>Phone</th>
                                <th>Detail</th>
                            </tr>
                        </thead>
                        <?php foreach ($wholesaler as $value) {
                            ?>
                            <tr>
                                <td><?= $value['shop_name'] ?></td>
                                <td><a href="http://www.google.com/maps/place/<?= $value['latitude'] ?>,<?= $value['longitude'] ?>" target="_blank"><?= $value['address_name'] ?>. <?= $value['address'] ?>, <?= $this->list_distributor_model->get_subdistrict($value['sub_district']) ?>, <?= $this->list_distributor_model->get_city($value['city']) ?>, <?= $this->list_distributor_model->get_province($value['province']) ?></a></td>
                                <td><?= $value['number_phone'] ?></td>
                                <td class="text-center"><button class="btn btn-default btn-lg" data-toggle="modal" data-target="#distributor<?= $value['list_distributor_id'] ?>"><i class="fa fa-eye"></i> Detil</button></td>
                                <div class="modal fade" id="distributor<?= $value['list_distributor_id'] ?>">
                                    <div class="modal-dialog modal-dialog-centered modal-md">
                                      <div class="modal-content">

                                        <!-- Modal Header -->
                                        <div class="modal-header">
                                          <h4 class="modal-title"><?= $value['company_name'] ?></h4>
                                          <button type="button" class="close" data-dismiss="modal">&times;</button>
                                      </div>

                                      <!-- Modal body -->
                                      <div class="modal-body">
                                          <ul class="nav nav-tabs" role="tablist">
                                            <li class="nav-item">
                                              <a class="nav-link active pr-5 pl-5" data-toggle="tab" href="#tab1<?= $value['list_distributor_id'] ?>">Profil</a>
                                          </li>
                                          <li class="nav-item">
                                              <a class="nav-link pr-5 pl-5" data-toggle="tab" href="#tab2<?= $value['list_distributor_id'] ?>">Bisnis</a>
                                          </li>
                                          <li class="nav-item">
                                              <a class="nav-link pr-5 pl-5" data-toggle="tab" href="#tab3<?= $value['list_distributor_id'] ?>">Alamat</a>
                                          </li>
                                          <li class="nav-item">
                                              <a class="nav-link pr-5 pl-5" data-toggle="tab" href="#tab4<?= $value['list_distributor_id'] ?>">Sosial Media</a>
                                          </li>
                                      </ul>

                                      <!-- Tab panes -->
                                      <div class="tab-content">
                                        <div id="tab1<?= $value['list_distributor_id'] ?>" class="tab-pane active p-4"><br>
                                          <div class="form-group">
                                            <div class="row">
                                                <label class="control-label col-sm-4 font-weight-bold">Company Name</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control bg-white" name="name" value="<?= $value['company_name'] ?>" maxlength="64" disabled="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="row">
                                                <label class="control-label col-sm-4 font-weight-bold">Shop</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control bg-white" name="name" value="<?= $value['shop_name'] ?>" maxlength="64" disabled="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="row">
                                                <label class="control-label col-sm-4 font-weight-bold">Number Phone</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control bg-white" name="name" value="<?= $value['number_phone'] ?>" maxlength="64" disabled="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="tab2<?= $value['list_distributor_id'] ?>" class="tab-pane fade p-4"><br>
                                      <div class="form-group">
                                        <div class="row">
                                            <label class="control-label col-sm-4 font-weight-bold">Category</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control bg-white" name="name" value="<?= $value['category'] ?>" maxlength="64" disabled="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <label class="control-label col-sm-4 font-weight-bold">Business</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control bg-white" name="name" value="<?= $value['business'] ?>" maxlength="64" disabled="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <label class="control-label col-sm-4 font-weight-bold">Haircut</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control bg-white" name="name" <?php if ($value['haircut']==1): ?>
                                                <?= 'value="Ya"' ?>
                                            <?php else: ?>
                                                <?= 'value="Tidak"' ?>
                                                <?php endif ?> maxlength="64" disabled="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <label class="control-label col-sm-4 font-weight-bold">Sales</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control bg-white" name="name" <?php if ($value['sales']==1): ?>
                                                <?= 'value="Ya"' ?>
                                            <?php else: ?>
                                                <?= 'value="Tidak"' ?>
                                                <?php endif ?> maxlength="64" disabled="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <label class="control-label col-sm-4 font-weight-bold">Repair</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control bg-white" name="name" <?php if ($value['repair']==1): ?>
                                                <?= 'value="Ya"' ?>
                                            <?php else: ?>
                                                <?= 'value="Tidak"' ?>
                                                <?php endif ?> maxlength="64" disabled="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <label class="control-label col-sm-4 font-weight-bold">Sparepart</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control bg-white" name="name" <?php if ($value['spare_part']==1): ?>
                                                <?= 'value="Ya"' ?>
                                            <?php else: ?>
                                                <?= 'value="Tidak"' ?>
                                                <?php endif ?> maxlength="64" disabled="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="tab3<?= $value['list_distributor_id'] ?>" class="tab-pane fade p-4"><br>
                                  <div class="form-group">
                                    <div class="row">
                                        <label class="control-label col-sm-4 font-weight-bold">Alamat</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control bg-white" name="name" value="<?= $value['address'] ?>" maxlength="64" disabled="">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <label class="control-label col-sm-4 font-weight-bold">Kode Pos</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control bg-white" name="name" value="<?= $value['post_code'] ?>" maxlength="64" disabled="">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <label class="control-label col-sm-4 font-weight-bold">Provinsi</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control bg-white" name="name" value="<?= $this->list_distributor_model->get_province($value['province']) ?>" maxlength="64" disabled="">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <label class="control-label col-sm-4 font-weight-bold">Kota/ Kabupaten</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control bg-white" name="name" value="<?= $this->list_distributor_model->get_city($value['city']) ?>" maxlength="64" disabled="">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <label class="control-label col-sm-4 font-weight-bold">Kecamatan</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control bg-white" name="name" value="<?= $this->list_distributor_model->get_subdistrict($value['sub_district']) ?>" maxlength="64" disabled="">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <label class="control-label col-sm-4 font-weight-bold">Koorditan Google Map</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control bg-white" name="name" value="<?= $value['latitude'].$value['longitude'] ?>" maxlength="64" disabled="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="tab4<?= $value['list_distributor_id'] ?>" class="tab-pane fade p-4"><br>
                              <div class="form-group">
                                <div class="row">
                                    <label class="control-label col-sm-4 font-weight-bold">Facebook</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control bg-white" name="name" value="<?= $value['facebook'] ?>" maxlength="64" disabled="">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <label class="control-label col-sm-4 font-weight-bold">Twiter</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control bg-white" name="name" value="<?= $value['twiter'] ?>" maxlength="64" disabled="">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <label class="control-label col-sm-4 font-weight-bold">Instagram</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control bg-white" name="name" value="<?=$value['instagram']?>" maxlength="64" disabled="">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <label class="control-label col-sm-4 font-weight-bold">Youtube</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control bg-white" name="name" value="<?=$value['youtube']?>" maxlength="64" disabled="">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <label class="control-label col-sm-4 font-weight-bold">Linkedin</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control bg-white" name="name" value="<?=$value['linkedin']?>" maxlength="64" disabled="">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <label class="control-label col-sm-4 font-weight-bold">Tiktok</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control bg-white" name="name" value="<?=$value['tiktok']?>" maxlength="64" disabled="">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <label class="control-label col-sm-4 font-weight-bold">Website/ Market Place</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control bg-white" name="name" value="<?=$value['website']?>" maxlength="64" disabled="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                  </div>

              </div>
          </div>
      </div>
  </tr>
<?php } ?>
</table>
</div>
</div>
<!-- <p><a href="mailto:<?=$this->config->item('email')?>" class="mailto">siapa@gmail.com</a></p> -->
<!--         </div>
</div> -->
<script>
    $(document).ready(function() {
        $('#wholesaler').DataTable( {
            autoFill: true
        } );
    } );
</script>
</div>

<div class="row row-no-gutter mb-5 d-flex justify-content-center">
    <div class="col-md-12 shadow-lg m-5 p-5">
        <h4 class="text-center">Wahl Professional Reseller</h4>
        <div class="table-responsive">
            <table class="table table-hover" width="100%" id="reseller">
                <thead>
                    <tr>
                        <th>Shop Name</th>
                        <th>Address</th>
                        <th>Phone</th>
                        <th>Detail</th>
                    </tr>
                </thead>
                <?php foreach ($reseller as $value) {
                    ?>
                    <tr>
                        <td><?= $value['shop_name'] ?></td>
                        <td><a href="http://www.google.com/maps/place/<?= $value['latitude'] ?>,<?= $value['longitude'] ?>" target="_blank"><?= $value['address_name'] ?>. <?= $value['address'] ?>, <?= $this->list_distributor_model->get_subdistrict($value['sub_district']) ?>, <?= $this->list_distributor_model->get_city($value['city']) ?>, <?= $this->list_distributor_model->get_province($value['province']) ?></a></td>
                        <td><?= $value['number_phone'] ?></td>
                        <td class="text-center"><button class="btn btn-default btn-lg" data-toggle="modal" data-target="#distributor<?= $value['list_distributor_id'] ?>"><i class="fa fa-eye"></i> Detil</button></td>
                        <div class="modal fade" id="distributor<?= $value['list_distributor_id'] ?>">
                            <div class="modal-dialog modal-dialog-centered modal-md">
                              <div class="modal-content">

                                <!-- Modal Header -->
                                <div class="modal-header">
                                  <h4 class="modal-title"><?= $value['company_name'] ?></h4>
                                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                              </div>

                              <!-- Modal body -->
                              <div class="modal-body">
                                  <ul class="nav nav-tabs" role="tablist">
                                    <li class="nav-item">
                                      <a class="nav-link active pr-5 pl-5" data-toggle="tab" href="#tab1<?= $value['list_distributor_id'] ?>">Profil</a>
                                  </li>
                                  <li class="nav-item">
                                      <a class="nav-link pr-5 pl-5" data-toggle="tab" href="#tab2<?= $value['list_distributor_id'] ?>">Bisnis</a>
                                  </li>
                                  <li class="nav-item">
                                      <a class="nav-link pr-5 pl-5" data-toggle="tab" href="#tab3<?= $value['list_distributor_id'] ?>">Alamat</a>
                                  </li>
                                  <li class="nav-item">
                                      <a class="nav-link pr-5 pl-5" data-toggle="tab" href="#tab4<?= $value['list_distributor_id'] ?>">Sosial Media</a>
                                  </li>
                              </ul>

                              <!-- Tab panes -->
                              <div class="tab-content">
                                <div id="tab1<?= $value['list_distributor_id'] ?>" class="tab-pane active p-4"><br>
                                  <div class="form-group">
                                    <div class="row">
                                        <label class="control-label col-sm-4 font-weight-bold">Company Name</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control bg-white" name="name" value="<?= $value['company_name'] ?>" maxlength="64" disabled="">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <label class="control-label col-sm-4 font-weight-bold">Shop</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control bg-white" name="name" value="<?= $value['shop_name'] ?>" maxlength="64" disabled="">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <label class="control-label col-sm-4 font-weight-bold">Number Phone</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control bg-white" name="name" value="<?= $value['number_phone'] ?>" maxlength="64" disabled="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="tab2<?= $value['list_distributor_id'] ?>" class="tab-pane fade p-4"><br>
                              <div class="form-group">
                                <div class="row">
                                    <label class="control-label col-sm-4 font-weight-bold">Category</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control bg-white" name="name" value="<?= $value['category'] ?>" maxlength="64" disabled="">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <label class="control-label col-sm-4 font-weight-bold">Business</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control bg-white" name="name" value="<?= $value['business'] ?>" maxlength="64" disabled="">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <label class="control-label col-sm-4 font-weight-bold">Haircut</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control bg-white" name="name" <?php if ($value['haircut']==1): ?>
                                        <?= 'value="Ya"' ?>
                                    <?php else: ?>
                                        <?= 'value="Tidak"' ?>
                                        <?php endif ?> maxlength="64" disabled="">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <label class="control-label col-sm-4 font-weight-bold">Sales</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control bg-white" name="name" <?php if ($value['sales']==1): ?>
                                        <?= 'value="Ya"' ?>
                                    <?php else: ?>
                                        <?= 'value="Tidak"' ?>
                                        <?php endif ?> maxlength="64" disabled="">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <label class="control-label col-sm-4 font-weight-bold">Repair</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control bg-white" name="name" <?php if ($value['repair']==1): ?>
                                        <?= 'value="Ya"' ?>
                                    <?php else: ?>
                                        <?= 'value="Tidak"' ?>
                                        <?php endif ?> maxlength="64" disabled="">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <label class="control-label col-sm-4 font-weight-bold">Sparepart</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control bg-white" name="name" <?php if ($value['spare_part']==1): ?>
                                        <?= 'value="Ya"' ?>
                                    <?php else: ?>
                                        <?= 'value="Tidak"' ?>
                                        <?php endif ?> maxlength="64" disabled="">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab3<?= $value['list_distributor_id'] ?>" class="tab-pane fade p-4"><br>
                          <div class="form-group">
                            <div class="row">
                                <label class="control-label col-sm-4 font-weight-bold">Alamat</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control bg-white" name="name" value="<?= $value['address'] ?>" maxlength="64" disabled="">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <label class="control-label col-sm-4 font-weight-bold">Kode Pos</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control bg-white" name="name" value="<?= $value['post_code'] ?>" maxlength="64" disabled="">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <label class="control-label col-sm-4 font-weight-bold">Provinsi</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control bg-white" name="name" value="<?= $this->list_distributor_model->get_province($value['province']) ?>" maxlength="64" disabled="">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <label class="control-label col-sm-4 font-weight-bold">Kota/ Kabupaten</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control bg-white" name="name" value="<?= $this->list_distributor_model->get_city($value['city']) ?>" maxlength="64" disabled="">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <label class="control-label col-sm-4 font-weight-bold">Kecamatan</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control bg-white" name="name" value="<?= $this->list_distributor_model->get_subdistrict($value['sub_district']) ?>" maxlength="64" disabled="">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <label class="control-label col-sm-4 font-weight-bold">Koorditan Google Map</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control bg-white" name="name" value="<?= $value['latitude'].$value['longitude'] ?>" maxlength="64" disabled="">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="tab4<?= $value['list_distributor_id'] ?>" class="tab-pane fade p-4"><br>
                      <div class="form-group">
                        <div class="row">
                            <label class="control-label col-sm-4 font-weight-bold">Facebook</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control bg-white" name="name" value="<?= $value['facebook'] ?>" maxlength="64" disabled="">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label class="control-label col-sm-4 font-weight-bold">Twiter</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control bg-white" name="name" value="<?= $value['twiter'] ?>" maxlength="64" disabled="">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label class="control-label col-sm-4 font-weight-bold">Instagram</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control bg-white" name="name" value="<?=$value['instagram']?>" maxlength="64" disabled="">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label class="control-label col-sm-4 font-weight-bold">Youtube</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control bg-white" name="name" value="<?=$value['youtube']?>" maxlength="64" disabled="">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label class="control-label col-sm-4 font-weight-bold">Linkedin</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control bg-white" name="name" value="<?=$value['linkedin']?>" maxlength="64" disabled="">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label class="control-label col-sm-4 font-weight-bold">Tiktok</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control bg-white" name="name" value="<?=$value['tiktok']?>" maxlength="64" disabled="">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label class="control-label col-sm-4 font-weight-bold">Website/ Market Place</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control bg-white" name="name" value="<?=$value['website']?>" maxlength="64" disabled="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal footer -->
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          </div>

      </div>
  </div>
</div>
</tr>
<?php } ?>
</table>
</div>
</div>
<!-- <p><a href="mailto:<?=$this->config->item('email')?>" class="mailto">siapa@gmail.com</a></p> -->
<!--         </div>
</div> -->
<script>
    $(document).ready(function() {
        $('#reseller').DataTable( {
            autoFill: true
        } );
    } );
</script>
</div>

</div>

</div>

</div>

</div>