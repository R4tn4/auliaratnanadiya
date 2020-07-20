<div id="wrapper">

    <!-- Sidebar -->
    <?php $this->load->view('templates/sidebar') ?>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <?php $this->load->view('templates/topbar') ?>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col text-center m-5">
                                <img src="<?= base_url('vendor/') ?>img/logo1.jpg" width="100"><br><small><i>Logo Perpusda Pagar Alam</i></small><br><br>
                                <p style="text-align: justify;">Perpustakaan Daerah kota Pagar Alam terletak berdekatan dengan salah satu icon kota Pagar Alam yaitu Jam Gadang
                                </p>
                            </div>
                            <div class="col m-5">
                                <center>
                                    <h4>Visi dan Misi</h4>
                                </center>
                                <h3>Visi</h3>
                                <p>Visi Perpusda Adalah : <b>Aktif</b>, <b>Kreatif</b>, <b>Antusias</b>, <b>Bersih</b> dan <b>Religius</b>.
                                </p>
                                <h3>Misi</h3>
                                <ol>
                                    <li>Mendorong minat Baca Masyarakat Kota Pagar Alam</li>
                                    
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

        <!-- Footer -->
        <?php $this->load->view('templates/copyright') ?>
        <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

</div>