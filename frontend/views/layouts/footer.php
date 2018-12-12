<?php 
    use yii\helpers\Url;
?>
<footer>
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 col-lg-4">
                        <div class="widget">
                            <?php foreach(frontend\controllers\SiteController::actionFooter() as $row) { ?>
                            <h4>KONTAK KAMI</h4>
                            <address>
                                <strong><i class="ion-ios-location-outline"></i>Alamat : <?= $row->kantor_website?></strong><br>
                            </address>

                            <address>
                                <strong> <i class="icon-phone"></i> Telepon : <?= $row->kontak_website ?> 
                                </strong><br>
                            </address>

                            <address>
                                <strong><i class="ion-ios-email-outline"></i> E-mail : <?= $row->email_website?></strong>
                            </address>
                             <?php } ?>  
                        </div>
                    </div>
                    <div class="col-sm-3 col-lg-3">
                        <div class="widget">
                            <h4>LINK TERKAIT</h4>
                            <ul class="link-list">
                            <ul class="link-list">
                                <?php foreach(frontend\controllers\SiteController::actionLink() as $row) { ?>
                                <p><a href="<?= $row->url_link ?>">
                                <?= $row->text_link?></a></p>
                                <?php }?>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-3 col-lg-3">
                        <div class="widget">
                            <h4>BERITA POPULER</h4>
                            <ul class="link-list">
                                <?php foreach(frontend\controllers\SiteController::actionBeritaPopuler() as $row) { ?>
                                <p><a href="<?= Url::to(['/berita', 'id'=>$row->slug_berita])?>"><?= $row->judul_berita ?> (<?= $row->hit_berita ?>)</a></p>
                                <li><a><?= $row->nama_user ?> - <?= date('d F Y', strtotime($row->tanggal_berita)) ?></a></li><br>
                                <?php }?>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-2 col-lg-2">
                        <?php foreach(frontend\controllers\SiteController::actionFooter() as $row) { ?>
                        <div class="widget">
                            <h4>IKUTI KAMI</h4>
                            <!-- <div class="col-lg-6"> -->
                                <ul class="social-network">
                                    <li><a href="<?= $row->facebook_website?>" target="_blank" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="<?= $row->twitter_website ?>" target="_blank" data-placement="top" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="<?= $row->instagram_website ?>" target="_blank" data-placement="top" title="instagram"><i class="fa fa-instagram"></i></a></li>
                                    <li><a href="<?= $row->youtube_website ?>" target="_blank" data-placement="top" title="youtube"><i class="fa fa-youtube"></i></a></li>
                                </ul>
                            <!-- </div> -->
                        </div>
                        <?php } ?>
                    </div>
                </div>
            </div>
            <div id="sub-footer">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="copyright">
                                <p>&copy;  All Right Reserved</p>
                                <div class="credits">
                                    
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </footer>