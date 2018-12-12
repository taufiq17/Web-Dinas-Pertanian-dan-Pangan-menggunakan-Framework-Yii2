<?php 
    use yii\helpers\Url;
    use yii\helpers\Html;
    $this->title = "Dinas Pertanian & Pangan Kota Pekalongan"
?>

		<section id="inner-headline">
			<div class="container">
			<?php foreach($geografi as $geo) {?>
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
							<li><a href="#">Halaman</a><i class="icon-angle-right"></i></li>
							<li class="active"><?= $geo->judul_halaman ?></li>
						</ul>
					</div>
				</div>
			<?php }?>
			</div>
		</section>
		<section id="content">
			<div class="container">
				<div class="row">
					<div class="col-lg-8">
					<?php foreach($geografi as $geo) { ?>
						<h3><?= $geo->judul_halaman?></h3>
						<?php if ($geo->gambar_halaman != null) { ?>
							<img src="<?=Url::to('@web/upload/halaman/') ?><?= $geo->gambar_halaman ?>" alt="" class="img-responsive" />
						<?php } else { ?>
							<img src="<?= Url::to('@web/upload/No_Image_Available.jpg')?>">
						<?php } ?>

						<p>
							<?= $geo->isi_halaman ?>
						</p>

						<div class="bottom-article">
							<ul class="meta-post">
								<li><i class="fa fa-user"></i><a href="#"><?= $geo->nama_user ?></a></li>
								<li><i class="fa fa-eye"></i> &nbsp; <?= $geo->hit_halaman ?></li>
							</ul>
						</div>
					<?php } ?>
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
		<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>

