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
							<li><a href="#">Pengumuman</a><i class="icon-angle-right"></i></li>
							<li class="active">Detail Pengumuman</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<section id="content">
			<div class="container">
				<div class="row">
					<div class="col-lg-8">
						<h3><?= $detail_pengumuman->judul_pengumuman ?></h3>
						<?php if($detail_pengumuman->gambar_pengumuman != null) { ?>
						<img src="<?=Url::to('@web/upload/pengumuman/') ?><?= $detail_pengumuman->gambar_pengumuman ?>" alt="" class="img-responsive" />
						<?php } else { ?>
                             <img src="<?= Url::to('@web/upload/No_Image_Available.jpg')?>">
                        <?php } ?>
						<p>
							<?= $detail_pengumuman->isi_pengumuman ?>
						</p>
						<div class="bottom-article">
								<ul class="meta-post">
									<li><i class="fa fa-calendar"></i><a href="#"><?= date('d F Y', strtotime($detail_pengumuman->tanggal_pengumuman)) ?></a></li>
									<li><i class="fa fa-user"></i><a href="#"><?= $detail_pengumuman->nama_user ?></a></li>
									<li><i class="fa fa-eye"></i><a href="#"><?= $detail_pengumuman->hit_pengumuman ?></a></li>
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
								<h5 class="widgetheading">Pengumuman Populer</h5>
								<ul class="recent">
								<?php foreach(frontend\controllers\SiteController::actionPengumumanPopuler() 
									as $row) { ?>
									<li>
										<li>
										<!--<?php if($row->gambar_pengumuman != null) { ?>
										<img src="<?=Url::to('@web/upload/pengumuman/') ?><?= $row->gambar_pengumuman ?>" class="pull-left" alt="" />
										<?php } else { ?>
                            			 <img src="<?= Url::to('@web/upload/No_Image_Available.jpg')?>">
                        				<?php } ?> -->
										<h5><a href="<?= Url::to(['/pengumuman', 'id'=>$row->slug_pengumuman])?>"><?= $row->judul_pengumuman ?> (<?= $row->hit_pengumuman ?>)</a></h5>
										<h6>
											<?= $row->nama_user ?> - <?= date('d F Y', strtotime($row->tanggal_pengumuman)) ?>
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