<?php 
    use yii\helpers\Url;
    use yii\helpers\Html;
    use yii\widgets\LinkPager;
    $this->title = "Dinas Pertanian & Pangan Kota Pekalongan"
?>
<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
							<li><a href="#">Berita</a><i class="icon-angle-right"></i></li>
							<li class="active">Berita Instansi</li>
						</ul>
					</div>
				</div>
			</div>
		</section>

			<section id="content">
				<div class="container">
					<?php foreach($berita_instansi as $bi) { ?>
					<div class="col-lg-4">
					
						<h4><b><a href="<?= Url::to(['/berita', 'id'=>$bi->slug_berita])?>"><?= $bi->judul_berita ?></a></b></h4>
						<?php if ($bi->gambar_berita != null) { ?>
						<img src="<?=Url::to('@web/upload/berita/') ?><?= $bi->gambar_berita ?>" alt="" class="img-responsive pull-left" />
						<?php } else { ?>
							<img src="<?= Url::to('@web/upload/No_Image_Available.jpg')?>">
						<?php } ?>
						<p>
							<?= substr(strip_tags($bi->isi_berita), 0, 200) ?>
						</p>
				<div class="bottom-article">
					<ul class="meta-post">
						<li><i class="fa fa-calendar"></i><a href="#"><?= date('d F Y', strtotime($bi->tanggal_berita)) ?></a></li>
						<li><i class="fa fa-user"></i><a href="#"> <?= $bi->nama_user ?></a></li>
						<li><i class="fa fa-eye"></i><a href="#"> <?= $bi->hit_berita ?></a></li>
					</ul>
				</div>
				
					</div>

					<?php } ?>
				</div>

				<nav aria-label="Page navigation example">
                    <ul class="pagination">
                    	<?= LinkPager::widget([
                    		'pagination' => $pages,
                    		'options' => ['tag' => 'li', 'class' => 'page-item'],
                    		'prevPageLabel' => '&laquo;',
                    		'nextPageLabel' =>'&raquo;',
                    		'activePageCssClass' => 'page-item active',
                    		'maxButtonCount' => 5,
                    		'linkOptions' => ['tag' => 'a', 'class' => 'page-link'],

                    		'prevPageCssClass' => 'page-link',
                    		'nextPageCssClass' => 'page-link',
                    		'firstPageCssClass' => 'page-link',
                    		'lastPageCssClass' => 'page-link',
                    	])?>
                     
                    </ul>
                </nav>
				
			</section>

				<!-- divider -->