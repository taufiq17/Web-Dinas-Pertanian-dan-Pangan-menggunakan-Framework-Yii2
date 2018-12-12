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
							<li class="active">Galeri Foto</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<section id="content">
			<div class="container">
				<div class="row">
					<div class="col-lg-8">
						<h2><?= $foto->nama_gallery ?></h2>
						<?php if($foto->gambar_gallery != null) { ?>
						<img src="<?=Url::to('@web/upload/galeri/foto/') ?><?= $foto->gambar_gallery ?>" alt="" class="img-responsive" />
						<?php } else { ?>
                             <img src="<?= Url::to('@web/upload/No_Image_Available.jpg')?>">
                        <?php } ?>
						<p>
							<?= $foto->keterangan_gallery ?>
						</p>
						<div class="bottom-article">
								<ul class="meta-post">
									<li><i class="fa fa-calendar"></i><?= date('d F Y', strtotime($foto->tanggal_gallery)) ?>[<?= $foto->waktu_gallery ?>]</li>
									<li><i class="fa fa-user"></i><?= $foto->nama_user ?></li>
									<li><i class="fa fa-camera"></i><?= $foto->fotografer_gallery ?>
									</li>
									<li><i class="fa fa-eye"></i><?= $foto->hit_gallery?></li>
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