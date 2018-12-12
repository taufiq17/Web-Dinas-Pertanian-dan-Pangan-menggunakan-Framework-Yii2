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
							<li><a href="#">Berita</a><i class="icon-angle-right"></i></li>
							<li class="active">Utama</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<section id="content">
			<div class="container">
				<div class="row">
					
					<div class="col-lg-8">
						<h3><?= $berita->judul_berita ?></h3>
						<?php if($berita->gambar_berita != null) { ?>
						<img src="<?=Url::to('@web/upload/berita/') ?><?= $berita->gambar_berita ?>" alt="" class="img-responsive" />
						<?php } else { ?>
                             <img src="<?= Url::to('@web/upload/No_Image_Available.jpg')?>">
                        <?php } ?>
						<p>
							<?= $berita->isi_berita ?>
						</p>
						<div class="bottom-article">
								<ul class="meta-post">
									<li><i class="fa fa-calendar"></i><a href="#"><?= date('d F Y', strtotime
									($berita->tanggal_berita)) ?></a></li>
									<li><i class="fa fa-user"></i><a href="#"><?= $berita->nama_user ?></a></li>
									<li><i class="fa fa-tags"></i><a href="#"><?= $berita->nama_kategori ?></a>, <a href="#"><?= $berita->nama_tema?></a></li>
									<li><i class="fa fa-eye"></i><a href="#"><?= $berita->hit_berita?></a></li>
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
								<h5 class="widgetheading">Kategori</h5>
								<ul class="cat">
									<li><i class="fa fa-angle-right"></i>
										<a href="<?= Url::to(['/site/beritainstansi'])?>">
											<?= $berita->nama_kategori ?></a></li>
								</ul>
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
							<div class="widget">
								<h5 class="widgetheading">Tag Populer</h5>
								<ul class="tags">
									<li><a href="#"><?= $berita->tag_berita ?></a></li>
								</ul>
							</div>
						</aside>
						
					</div>
					
				</div>
			</div>
		</section>