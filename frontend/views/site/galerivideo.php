<?php 
    use yii\helpers\Url;
    $this->title = "Dinas Pertanian & Pangan Kota Pekalongan"
?>

<section style="background-color:#FAFAFA">
            <!-- Portfolio Projects -->
            <div class="container marginbot50">
                <?php foreach($galerivideo as $gvideo) { ?>
                <div class="row">
                    <div class="col-lg-12">
                        <h4><b>ALBUM VIDEO : <?= $gvideo->nama_album ?></b></h4><br>
                        <p><?= $gvideo->keterangan_album ?></p>
                        <div class="bottom-article">
                            <div><?= date('d F Y', strtotime($gvideo->tanggal_gallery)) ?>
                            [<?=$gvideo->waktu_gallery ?>]</div>
                            <div class="fa fa-user">&nbsp;<?= $gvideo->nama_user ?></div>&nbsp; &nbsp; &nbsp;
                            <div class="fa fa-eye">&nbsp;<?= $gvideo->hit_gallery ?></div>
                        </div>

                        <div id="grid-container" class="cbp-l-grid-projects">
                            <ul>
                                <li class="cbp-item identity web-design">
                                    <div class="cbp-caption">
                                        <div class="cbp-caption-defaultWrap">
                                            <?php if ($gvideo->gambar_gallery != null) { ?>
                                            <video src="<?=Url::to('@web/upload/galeri/video/') ?><?= $gvideo->gambar_gallery ?>" alt="">
                                            </video> 
                                            <?php } else { ?>
                                            <img src="<?= Url::to('@web/upload/video-not-found.png')?>">
                                        <?php } ?>
                                        </div>
                                        <div class="cbp-caption-activeWrap">
                                            <div class="cbp-l-caption-alignCenter">
                                                <div class="cbp-l-caption-body">
                                            <?php if ($gvideo->gambar_gallery != null) { ?>
                                                    <a href="<?=Url::to('@web/upload/galeri/video/') ?><?= $gvideo->gambar_gallery ?>" 
                                                        class="cbp-lightbox cbp-l-caption-buttonRight" data-title="<?= $gvideo->jenis_gallery ?><br>
                                                        <?= $gvideo->singkatan_instansi ?> - 
                                                    <?= $gvideo->nama_gallery?>">Tonton Video</a>
                                            <?php } else { ?>
                                                    <a href="<?= Url::to('@web/upload/video-not-found.png')?>" class="cbp-lightbox cbp-l-caption-buttonRight" 
                                                    data-title="Video tidak ditemukan">Tonton Video</a>
                                            <?php } ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cbp-l-grid-projects-title">
                                        <a href="<?= Url::to(['/galerivideo', 'id'=>$gvideo->slug_gallery])?>">
                                            <?= $gvideo->nama_gallery ?></a>
                                    </div>
                               
                                </li>
                                

                            </ul>
                        </div>

                    </div>
                </div>
            <?php  }?>
            </div>
            </section>
