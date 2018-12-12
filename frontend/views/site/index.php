<?php
    use yii\helpers\Url;
    $this->title = "Dinas Pertanian & Pangan Kota Pekalongan"
?>

<section id="featured" class="bg">
            <!-- start slider -->
            <!-- start slider -->
            <div class="container">
                <div class="row">
                    <div class="col-lg-12" style="margin-top: -30px;">
                        <!-- Slider -->
                        <div id="main-slider" class="main-slider flexslider">
                            <ul class="slides">
                                <?php foreach($berita_utama_instansi as $slider) { ?>
                                <li>
                                    <?php if($slider->gambar_berita != null) { ?>
                                        <img src="<?=Url::to('@web/upload/berita/') ?><?= $slider->gambar_berita ?>"
                                        alt="" />
                                    <?php } else { ?>
                                        <img src="<?= Url::to('@web/upload/No_Image_Available.jpg')?>">
                                    <?php } ?>
                                    <div class="flex-caption">
                                        <h3><?= $slider->judul_berita ?></h3>
                                        <p></p>
                                        <a href="<?= Url::to(['/berita', 'id'=>$slider->slug_berita])?>" target="_blank" class="btn btn-theme">Selengkapnya</a>
                                    </div>
                                    
                                </li>

                                <?php } ?>
                            </ul>
                        
                        </div>
                        <!-- end slider -->
                    </div>
                </div>
            </div>
        </section>
            
            <div class="container">
                <div class="title-wrap title-wrap--line">

                </div>
            </div>

                <div class="container">
                    <a href="<?= Url::to(['site/beritainstansi'])?>"><h4><b>BERITA TERBARU</b></h4></a>    
                    <div class="row">
                        <?php foreach ($berita_terbaru_instansi as $bti) {?>
                        <div class="col-xs-18 col-sm-6 col-md-3">
                            <div class="thumbnail">
                            <?php if($bti->gambar_berita != null) { ?>
                                <img src="<?=Url::to('@web/upload/berita/') ?><?= $bti->gambar_berita ?>">
                            <?php } else { ?>
                                <img src="<?= Url::to('@web/upload/No_Image_Available.jpg')?>">
                            <?php } ?>
                                <div class="caption">
                                    <h4><?= $bti->judul_berita ?></h4>
                                    <i class="fa fa-eye pull-right">&nbsp;<?= $bti->hit_berita ?></i>
                                    <a href="<?= Url::to(['/berita', 'id'=>$bti->slug_berita])?>" class="btn btn-warning btn-xs" role="button">Baca Selengkapnya</a>
                                </div>
                            </div>
                        </div>
                        <?php }?>
                    </div>
                        
                </div>
                    <!--/row-->

        <div class="container">
            <div class="title-wrap title-wrap--line">

            </div>
        </div>

            <div class="container">
                    <a href="<?= Url::to(['site/beritainstansi'])?>"><h4><b>BERITA KOTA</b></h4></a>    
                    <div class="row">
                        <?php foreach ($berita_kota as $bkota) {?>
                        <div class="col-xs-18 col-sm-6 col-md-3">
                            <div class="thumbnail">
                            <?php if($bkota->gambar_berita != null) { ?>
                                <img src="<?=Url::to('@web/upload/berita/') ?><?= $bkota->gambar_berita ?>">
                            <?php } else { ?>
                                <img src="<?= Url::to('@web/upload/No_Image_Available.jpg')?>">
                            <?php } ?>
                                <div class="caption">
                                    <h4><?= $bkota->judul_berita ?></h4>
                                    <i class="fa fa-eye pull-right">&nbsp;<?= $bkota->hit_berita ?></i>
                                    <a href="<?= Url::to(['/berita', 'id'=>$bkota->slug_berita])?>" class="btn btn-warning btn-xs" role="button">Baca Selengkapnya</a>
                                </div>
                            </div>
                        </div>
                        <?php }?>
                    </div>
                        
                </div>
                    <!--/row-->




            <div class="container">
                <div class="title-wrap title-wrap--line">

                </div>
            </div>

            <section>
                <div class="container">
                    <div class="row">
                    
                    <div class="col-sm-8">
                     <a href="<?= Url::to(['site/pengumuman'])?>"> <h4><b>PENGUMUMAN</b></h4></a>
                        <div class="w3-panel w3-card">
                        <div class="testimonialslide clearfix flexslider">
                        <?php foreach($pengumuman as $png) {?>
                            <ul class="slides">
                                <li>
                                    <blockquote>
                                        <?= $png->judul_pengumuman ?>
                                    </blockquote>
                                    <h6><?= $png->nama_user ?> <span>&#8213; <?= date('d F Y', strtotime($png->tanggal_pengumuman)) ?></span></h6>
                                </li>
                                <li>
                                    <blockquote>
                                        <?= $png->judul_pengumuman ?>
                                    </blockquote>
                                    <h6><?= $png->nama_user ?> <span>&#8213; <?= date('d F Y', strtotime($png->tanggal_pengumuman)) ?></span></h6>
                                </li>
                            </ul>
                        <?php }?>
                        </div>
                        <div class="cbp-ls-loadMore-button">
                            <a href="<?= Url::to(['/pengumuman', 'id'=>$png->slug_pengumuman])?>" class="cbp-ls-loadMore-button-link">Lihat Selengkapnya</a>
                        </div><br>
                        </div>
                    </div>
                    <div class="col-sm-4">
                    <?php foreach($widget as $sosmed) { ?>
                        <h4>Ikuti Kami</h4>
                        <div class="w3-panel w3-card">
                        <aside class="widget widget-popular-posts widget-no-padding" style="padding: 0px;">
                            <ul class="social">
                                <li class="facebook"><a href="<?= $sosmed->facebook_website ?>" target="_blank"><i class="fa fa-facebook fa-3x"></i></a></li>
                                <li class="twitter"><a href="<?= $sosmed->twitter_website ?>" target="_blank"><i class="fa fa-twitter fa-3x"></i></a></li>
                                <li class="pinterest"><a href="<?= $sosmed->email_website ?>" target="_blank"><i class="fa fa-envelope fa-3x"></i></a></li>
                                <li class="behance"><a href="<?= $sosmed->instagram_website ?>" target="_blank"><i class="fa fa-instagram fa-3x"></i></a></li>
                            </ul>
                        </aside>
                    </div>
                    <?php } ?>
                </div>
            </section>
        

            <!-- Portfolio Projects -->
        <section style="background-color:#FAFAFA">
            <!-- Portfolio Projects -->
            <div class="container marginbot50">
                <div class="row">
                    <div class="col-lg-12">
                        <h4><b>GALERI FOTO DAN VIDEO</b></h4>

                        <div id="filters-container" class="cbp-l-filters-button">
                            <div data-filter="*" class="cbp-filter-item-active cbp-filter-item">Semua
                                <div class="cbp-filter-counter"></div>
                            </div>
                            <div data-filter=".web-design" class="cbp-filter-item">Album Video
                                <div class="cbp-filter-counter"></div>
                            </div>
                            <div data-filter=".graphic" class="cbp-filter-item">Album Foto
                                <div class="cbp-filter-counter"></div>
                            </div>
                        </div>


                        <div id="grid-container" class="cbp-l-grid-projects">
                            <ul>
                                <li class="cbp-item graphic">
                                <?php foreach($albumfoto as $afoto) { ?>
                                    <div class="cbp-caption">
                                        <div class="cbp-caption-defaultWrap">
                                            <?php if ($afoto->gambar_album != null) { ?>
                                            <img src="<?=Url::to('@web/upload/album/foto/') ?><?= $afoto->gambar_album ?>" alt="">
                                            </img> 
                                            <?php } else { ?>
                                            <img src="<?= Url::to('@web/upload/No_Image_Available.jpg')?>">
                                        <?php } ?>
                                        </div>
                                        <div class="cbp-caption-activeWrap">
                                            <div class="cbp-l-caption-alignCenter">
                                                <div class="cbp-l-caption-body">
                                            <?php if ($afoto->gambar_album != null) { ?>
                                                    <a href="<?=Url::to('@web/upload/album/foto/') ?><?= $afoto->gambar_album ?>" class="cbp-lightbox cbp-l-caption-buttonRight" data-title="<?= $afoto->jenis_album ?><br><?= $afoto->singkatan_instansi ?> - 
                                                    <?= $afoto->nama_album?>">Perbesar Foto</a>
                                            <?php } else { ?>
                                                    <a href="<?= Url::to('@web/upload/No_Image_Available.jpg')?>" class="cbp-lightbox cbp-l-caption-buttonRight" 
                                                    data-title="Foto tidak ditemukan">Perbesar Foto</a>
                                            <?php } ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cbp-l-grid-projects-title"><a href="<?=Url::to(['/site/galerifoto', 'id'=>$afoto->slug_album])?>"><?= $afoto->nama_album ?></a></div>
                                    <div><?= date('d F Y', strtotime($afoto->tanggal_album)) ?>[<?= $afoto->waktu_album ?>]</div>
                                <?php } ?>
                                </li>

                                <li class="cbp-item graphic">
                                <?php foreach($albumfoto as $afoto) { ?>
                                    <div class="cbp-caption">
                                        <div class="cbp-caption-defaultWrap">
                                            <?php if ($afoto->gambar_album != null) { ?>
                                            <img src="<?=Url::to('@web/upload/album/foto/') ?><?= $afoto->gambar_album ?>" alt="">
                                            </img> 
                                            <?php } else { ?>
                                            <img src="<?= Url::to('@web/upload/No_Image_Available.jpg')?>">
                                        <?php } ?>
                                        </div>
                                        <div class="cbp-caption-activeWrap">
                                            <div class="cbp-l-caption-alignCenter">
                                                <div class="cbp-l-caption-body">
                                            <?php if ($afoto->gambar_album != null) { ?>
                                                    <a href="<?=Url::to('@web/upload/album/foto/') ?><?= $afoto->gambar_album ?>" class="cbp-lightbox cbp-l-caption-buttonRight" data-title="<?= $afoto->jenis_album ?><br><?= $afoto->singkatan_instansi ?> - 
                                                    <?= $afoto->nama_album?>">Perbesar Foto</a>
                                            <?php } else { ?>
                                                    <a href="<?= Url::to('@web/upload/No_Image_Available.jpg')?>" class="cbp-lightbox cbp-l-caption-buttonRight" 
                                                    data-title="Foto tidak ditemukan">Perbesar Foto</a>
                                            <?php } ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cbp-l-grid-projects-title"><a href="<?=Url::to(['/site/galerifoto', 'id'=>$afoto->slug_album])?>"><?= $afoto->nama_album ?></a></div>
                                    <div><?= date('d F Y', strtotime($afoto->tanggal_album)) ?>[<?= $afoto->waktu_album ?>]</div>
                                <?php } ?>
                                </li>

                               <li class="cbp-item graphic">
                                <?php foreach($albumfoto as $afoto) { ?>
                                    <div class="cbp-caption">
                                        <div class="cbp-caption-defaultWrap">
                                            <?php if ($afoto->gambar_album != null) { ?>
                                            <img src="<?=Url::to('@web/upload/album/foto/') ?><?= $afoto->gambar_album ?>" alt="">
                                            </img> 
                                            <?php } else { ?>
                                            <img src="<?= Url::to('@web/upload/No_Image_Available.jpg')?>">
                                        <?php } ?>
                                        </div>
                                        <div class="cbp-caption-activeWrap">
                                            <div class="cbp-l-caption-alignCenter">
                                                <div class="cbp-l-caption-body">
                                            <?php if ($afoto->gambar_album != null) { ?>
                                                    <a href="<?=Url::to('@web/upload/album/foto/') ?><?= $afoto->gambar_album ?>" class="cbp-lightbox cbp-l-caption-buttonRight" data-title="<?= $afoto->jenis_album ?><br><?= $afoto->singkatan_instansi ?> - 
                                                    <?= $afoto->nama_album?>">Perbesar Foto</a>
                                            <?php } else { ?>
                                                    <a href="<?= Url::to('@web/upload/No_Image_Available.jpg')?>" class="cbp-lightbox cbp-l-caption-buttonRight" 
                                                    data-title="Foto tidak ditemukan">Perbesar Foto</a>
                                            <?php } ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cbp-l-grid-projects-title"><a href="<?=Url::to(['/site/galerifoto', 'id'=>$afoto->slug_album])?>"><?= $afoto->nama_album ?></a></div>
                                    <div><?= date('d F Y', strtotime($afoto->tanggal_album)) ?>[<?= $afoto->waktu_album ?>]</div>
                                <?php } ?>
                                </li>

                             <li class="cbp-item graphic">
                                <?php foreach($albumfoto as $afoto) { ?>
                                    <div class="cbp-caption">
                                        <div class="cbp-caption-defaultWrap">
                                            <?php if ($afoto->gambar_album != null) { ?>
                                            <img src="<?=Url::to('@web/upload/album/foto/') ?><?= $afoto->gambar_album ?>" alt="">
                                            </img> 
                                            <?php } else { ?>
                                            <img src="<?= Url::to('@web/upload/No_Image_Available.jpg')?>">
                                        <?php } ?>
                                        </div>
                                        <div class="cbp-caption-activeWrap">
                                            <div class="cbp-l-caption-alignCenter">
                                                <div class="cbp-l-caption-body">
                                            <?php if ($afoto->gambar_album != null) { ?>
                                                    <a href="<?=Url::to('@web/upload/album/foto/') ?><?= $afoto->gambar_album ?>" class="cbp-lightbox cbp-l-caption-buttonRight" data-title="<?= $afoto->jenis_album ?><br><?= $afoto->singkatan_instansi ?> - 
                                                    <?= $afoto->nama_album?>">Perbesar Foto</a>
                                            <?php } else { ?>
                                                    <a href="<?= Url::to('@web/upload/No_Image_Available.jpg')?>" class="cbp-lightbox cbp-l-caption-buttonRight" 
                                                    data-title="Foto tidak ditemukan">Perbesar Foto</a>
                                            <?php } ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cbp-l-grid-projects-title"><a href="<?=Url::to(['/site/galerifoto', 'id'=>$afoto->slug_album])?>"><?= $afoto->nama_album ?></a></div>
                                    <div><?= date('d F Y', strtotime($afoto->tanggal_album)) ?>[<?= $afoto->waktu_album ?>]</div>
                                <?php } ?>
                                </li>

                                <li class="cbp-item identity web-design">
                                <?php foreach($albumvideo as $avideo) { ?>
                                    <div class="cbp-caption">
                                        <div class="cbp-caption-defaultWrap">
                                            <?php if ($avideo->gambar_album != null) { ?>
                                            <video src="<?=Url::to('@web/upload/album/video/') ?><?= $avideo->gambar_album ?>" alt="">
                                            </video> 
                                            <?php } else { ?>
                                            <img src="<?= Url::to('@web/upload/video-not-found.png')?>">
                                        <?php } ?>
                                        </div>
                                        <div class="cbp-caption-activeWrap">
                                            <div class="cbp-l-caption-alignCenter">
                                                <div class="cbp-l-caption-body">
                                            <?php if ($avideo->gambar_album != null) { ?>
                                                    <a href="<?=Url::to('@web/upload/album/video/') ?><?= $avideo->gambar_album ?>" class="cbp-lightbox cbp-l-caption-buttonRight" data-title="<?= $avideo->jenis_album ?><br><?= $avideo->singkatan_instansi ?> - 
                                                    <?= $avideo->nama_album?>">Tonton Video</a>
                                            <?php } else { ?>
                                                    <a href="<?= Url::to('@web/upload/video-not-found.png')?>" class="cbp-lightbox cbp-l-caption-buttonRight" 
                                                    data-title="Video tidak ditemukan">Tonton Video</a>
                                            <?php } ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cbp-l-grid-projects-title"><a href="<?=Url::to(['/site/galerivideo', 'id'=>$avideo->slug_album])?>"><?= $avideo->nama_album ?></a></div>
                                    <div><?= date('d F Y', strtotime($avideo->tanggal_album)) ?>[<?= $avideo->waktu_album ?>]</div>
                                <?php } ?>
                                </li>

                                <li class="cbp-item identity web-design">
                                <?php foreach($albumvideo as $avideo) { ?>
                                    <div class="cbp-caption">
                                        <div class="cbp-caption-defaultWrap">
                                            <?php if ($avideo->gambar_album != null) { ?>
                                            <video src="<?=Url::to('@web/upload/album/video/') ?><?= $avideo->gambar_album ?>" alt="">
                                            </video> 
                                            <?php } else { ?>
                                            <img src="<?= Url::to('@web/upload/video-not-found.png')?>">
                                            <?php } ?>
                                        </div>
                                        <div class="cbp-caption-activeWrap">
                                            <div class="cbp-l-caption-alignCenter">
                                                <div class="cbp-l-caption-body">
                                            <?php if ($avideo->gambar_album != null) { ?>
                                                    <a href="<?=Url::to('@web/upload/album/video/') ?><?= $avideo->gambar_album ?>" class="cbp-lightbox cbp-l-caption-buttonRight" data-title="<?= $avideo->jenis_album ?><br><?= $avideo->singkatan_instansi ?> - 
                                                    <?= $avideo->nama_album?>">Tonton Video</a>
                                            <?php } else { ?>
                                                    <a href="<?= Url::to('@web/upload/video-not-found.png')?>" class="cbp-lightbox cbp-l-caption-buttonRight" 
                                                    data-title="Video tidak ditemukan">Tonton Video</a>
                                            <?php } ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cbp-l-grid-projects-title"><a href="<?=Url::to(['/site/galerivideo', 'id'=>$avideo->slug_album])?>"><?= $avideo->nama_album ?></a></div>
                                    <div><?= date('d F Y', strtotime ($avideo->tanggal_album)) ?>[<?= $avideo->waktu_album ?>]</div>
                                <?php } ?>
                                </li>

                                <li class="cbp-item identity web-design">
                                <?php foreach($albumvideo as $avideo) { ?>
                                    <div class="cbp-caption">
                                        <div class="cbp-caption-defaultWrap">
                                            <?php if ($avideo->gambar_album != null) { ?>
                                            <video src="<?=Url::to('@web/upload/album/video/') ?><?= $avideo->gambar_album ?>" alt="">
                                            </video> 
                                            <?php } else { ?>
                                            <img src="<?= Url::to('@web/upload/video-not-found.png')?>">
                                        <?php } ?>
                                        </div>
                                        <div class="cbp-caption-activeWrap">
                                            <div class="cbp-l-caption-alignCenter">
                                                <div class="cbp-l-caption-body">
                                            <?php if ($avideo->gambar_album != null) { ?>
                                                    <a href="<?=Url::to('@web/upload/album/video/') ?><?= $avideo->gambar_album ?>" class="cbp-lightbox cbp-l-caption-buttonRight" data-title="<?= $avideo->jenis_album ?><br><?= $avideo->singkatan_instansi ?> - 
                                                    <?= $avideo->nama_album?>">Tonton Video</a>
                                            <?php } else { ?>
                                                    <a href="<?= Url::to('@web/upload/video-not-found.png')?>" class="cbp-lightbox cbp-l-caption-buttonRight" 
                                                    data-title="Video tidak ditemukan">Tonton Video</a>
                                            <?php } ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cbp-l-grid-projects-title"><a href="<?=Url::to(['/site/galerivideo', 'id'=>$avideo->slug_album])?>"><?= $avideo->nama_album ?></a></div>
                                    <div><?= date('d F Y', strtotime($avideo->tanggal_album)) ?>[<?= $avideo->waktu_album ?>]</div>
                                <?php } ?>
                                </li>

                                <li class="cbp-item identity web-design">
                                <?php foreach($albumvideo as $avideo) { ?>
                                    <div class="cbp-caption">
                                        <div class="cbp-caption-defaultWrap">
                                            <?php if ($avideo->gambar_album != null) { ?>
                                            <video src="<?=Url::to('@web/upload/album/video/') ?><?= $avideo->gambar_album ?>" alt="">
                                            </video> 
                                            <?php } else { ?>
                                            <img src="<?= Url::to('@web/upload/video-not-found.png')?>">
                                        <?php } ?>
                                        </div>
                                        <div class="cbp-caption-activeWrap">
                                            <div class="cbp-l-caption-alignCenter">
                                                <div class="cbp-l-caption-body">
                                            <?php if ($avideo->gambar_album != null) { ?>
                                                    <a href="<?=Url::to('@web/upload/album/video/') ?><?= $avideo->gambar_album ?>" class="cbp-lightbox cbp-l-caption-buttonRight" data-title="<?= $avideo->jenis_album ?><br><?= $avideo->singkatan_instansi ?> - 
                                                    <?= $avideo->nama_album?>">Tonton Video</a>
                                            <?php } else { ?>
                                                    <a href="<?= Url::to('@web/upload/video-not-found.png')?>" class="cbp-lightbox cbp-l-caption-buttonRight" 
                                                    data-title="Video tidak ditemukan">Tonton Video</a>
                                            <?php } ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cbp-l-grid-projects-title"><a href="<?=Url::to(['/site/galerifoto', 'id'=>$afoto->slug_album])?>"><?= $afoto->nama_album ?></a></div>
                                    <div><?= date('d F Y', strtotime($avideo->tanggal_album)) ?>[<?= $avideo->waktu_album ?>]</div>
                                <?php } ?>
                                </li>
                            </ul>
                        </div>

                        <div class="cbp-l-loadMore-button">
                            <a href="ajax/loadMore.html" class="cbp-l-loadMore-button-link">Lihat Selengkapnya</a>
                        </div>

                    </div>
                </div>
            </div>
            </section>

                <!-- baruuu -->
                <section>
                    <div class="container">
                        <aside class="col-lg-4 sidebar sidebar--right">
                        
                            <!-- Widget Twitter Kota -->
                            <aside class="widget widget-popular-posts widget-no-padding" style="padding: 0px;">
                                <a class="twitter-timeline" data-lang="id" data-width="100%" data-height="475" data-dnt="true" data-link-color="#066674"
                                 href="https://twitter.com/pemkotpkl?ref_src=twsrc%5Etfw">Tweets by pemkotpkl</a>
                                <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
                            </aside>
                            <!-- Widget Link Terkait -->
                        </aside>
                        
                        <aside class="col-lg-4 sidebar sidebar--right">
                        
                            <!-- Widget Twitter Humas -->
                            <aside class="widget widget-popular-posts widget-no-padding" style="padding: 0px;">
                                <a class="twitter-timeline" data-lang="id" data-width="100%" data-height="475" data-dnt="true" data-link-color="#066674"
                                 href="https://twitter.com/HumasPemkotPkl?ref_src=twsrc%5Etfw">Tweets by HumasPemkotPkl</a>
                                <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
                            </aside>
                        </aside>
                        
                        <aside class="col-lg-4 sidebar sidebar--right">
                        
                            <!-- Widget Twitter Batik TV -->
                            <aside class="widget widget-popular-posts widget-no-padding" style="padding: 0px;">
                                <a class="twitter-timeline" data-lang="id" data-width="100%" data-height="475" data-dnt="true" data-link-color="#066674"
                                 href="https://twitter.com/officialbatiktv?ref_src=twsrc%5Etfw">Tweets by officialbatiktv</a>
                                <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
                            </aside>
                            <aside class="col-lg-4 sidebar sidebar--right">
                            
                                
                                <!-- Widget Sosmed
                                
                    </div>
                </section>


<!-- test -->

<div class="col-md-6 .col-md-offset-3">
    
</div>


            <!-- divider -->
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="solidline">
                        </div>
                    </div>
                </div>
            </div>
            <!-- end divider -->

        </section>