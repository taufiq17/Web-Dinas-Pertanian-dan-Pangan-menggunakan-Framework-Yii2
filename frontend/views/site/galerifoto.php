<?php 
    use yii\helpers\Url;
    $this->title = "Dinas Pertanian & Pangan Kota Pekalongan"
?>

<section style="background-color:#FAFAFA">
            <!-- Portfolio Projects -->
            <div class="container marginbot50">
                <?php foreach($galerifoto as $gfoto) { ?>
                <div class="row">
                    <div class="col-lg-12">
                        <h4><b>ALBUM FOTO : <?= $gfoto->nama_album ?></b></h4><br>
                        <p><?= $gfoto->keterangan_album ?></p>
                        <div class="bottom-article">
                            <div><?= date('d F Y', strtotime($gfoto->tanggal_gallery)) ?>
                            [<?=$gfoto->waktu_gallery ?>]</div>
                            <div class="fa fa-user">&nbsp;<?= $gfoto->nama_user ?></div>&nbsp; &nbsp; &nbsp;
                            <div class="fa fa-eye">&nbsp;<?= $gfoto->hit_album ?></div>
                        </div>

                        <div id="grid-container" class="cbp-l-grid-projects">
                            <ul>
                                <li class="cbp-item identity web-design">
                                    <div class="cbp-caption">
                                        <div class="cbp-caption-defaultWrap">
                                            <?php if ($gfoto->gambar_gallery != null) { ?>
                                            <img src="<?=Url::to('@web/upload/galeri/foto/') ?><?= $gfoto->gambar_gallery ?>" alt="">
                                            </img> 
                                            <?php } else { ?>
                                            <img src="<?= Url::to('@web/upload/No_Image_Available.jpg')?>">
                                        <?php } ?>
                                        </div>
                                        <div class="cbp-caption-activeWrap">
                                            <div class="cbp-l-caption-alignCenter">
                                                <div class="cbp-l-caption-body">
                                            <?php if ($gfoto->gambar_gallery != null) { ?>
                                                    <a href="<?=Url::to('@web/upload/galeri/foto/') ?><?= $gfoto->gambar_gallery ?>" 
                                                        class="cbp-lightbox cbp-l-caption-buttonRight" data-title="<?= $gfoto->jenis_gallery ?><br>
                                                        <?= $gfoto->singkatan_instansi ?> - 
                                                    <?= $gfoto->nama_gallery?>">Perbesar Foto</a>
                                            <?php } else { ?>
                                                    <a href="<?= Url::to('@web/upload/No_Image_Available.jpg')?>" class="cbp-lightbox cbp-l-caption-buttonRight" 
                                                    data-title="Foto tidak ditemukan">Perbesar Foto</a>
                                            <?php } ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cbp-l-grid-projects-title">
                                        <a href="<?= Url::to(['/galerifoto', 'id'=>$gfoto->slug_gallery])?>">
                                            <?= $gfoto->nama_gallery ?></a>
                                    </div>
                               
                                </li>
                                

                            </ul>
                        </div>

                    </div>
                </div>
            <?php  }?>
            </div>
            </section>
