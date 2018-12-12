<?php 
	use yii\helpers\Url;
	use yii\helpers\Html;
	$this->title = "Dinas Pertanian & Pangan Kota Pekalongan"
?>
<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
							<li><a href="#">Galeri</a><i class="icon-angle-right"></i></li>
							<li class="active">Galeri Video</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<section id="content">
			<div class="container">
				<div class="row">
					<div class="col-lg-8">
						<h2><?= $video->nama_gallery ?></h2>
						<?php if($video->gambar_gallery != null) { ?>
						<video src="<?=Url::to('@web/upload/galeri/video/') ?><?= $video->gambar_gallery ?>" alt="" class="img-responsive">
						</video>
						<?php } else { ?>
                             <img src="<?= Url::to('@web/upload/video-not-found.png')?>">
                        <?php } ?>
                        
						<p>
							<?= $video->keterangan_gallery ?>
						</p>
						<div class="bottom-article">
								<ul class="meta-post">
									<li><i class="fa fa-calendar"></i><?= date('d F Y', strtotime($video->tanggal_gallery)) ?>[<?= $video->waktu_gallery ?>]</li>
									<li><i class="fa fa-user"></i><?= $video->nama_user ?></li>
									<li><i class="fa fa-camera"></i><?= $video->fotografer_gallery ?>
									</li>
									<li><i class="fa fa-eye"></i><?= $video->hit_gallery?></li>
								</ul>
						</div>
					</div>

					<div class="col-lg-4">
						
						<aside class="right-sidebar">
							<div class="widget">
								<form role="form">
									<div class="form-group">
										<input type="text" class="form-control" id="s" placeholder="Search..">
									</div>
								</form>
							</div>
							<div class="widget">
								<h5 class="widgetheading">Berita Populer</h5>
								<ul class="recent">
								<?php foreach(frontend\controllers\SiteController::actionBeritaPopuler() as $row) { ?>
									<li>
										<li>
										<!--<?php if($row->gambar_berita != null) { ?>
										<img src="<?=Url::to('@web/upload/berita/') ?><?= $row->gambar_berita ?>" class="pull-left" alt="" />
										<?php } else { ?>
                            			 <img src="<?= Url::to('@web/upload/No_Image_Available.jpg')?>">
                        				<?php } ?> -->
										<h5><a href="<?= Url::to(['/berita', 'id'=>$row->slug_berita])?>"><?= $row->judul_berita ?> (<?= $row->hit_berita ?>)</a></h5>
										<h6>
											<?= $row->nama_user ?> - <?= date('d F Y', strtotime($row->tanggal_berita)) ?>
										</h6>
										</li>
									</li>
								<?php }?>
								</ul>
							</div>
						</aside>
						
					</div>
				</div>
			</div>
		</section>