<?php 
    use yii\helpers\Url;
    use yii\widgets\LinkPager;
    $this->title = "Dinas Pertanian & Pangan Kota Pekalongan"
?>

<section style="background-color:#FAFAFA">
            <!-- Portfolio Projects -->
            <div class="container marginbot50">
                <div class="row">
                    <div class="col-lg-12">
                        <h4><b>ALBUM FOTO</b></h4>

                        <div id="grid-container" class="cbp-l-grid-projects">
                            <ul>
                                <li class="cbp-item graphic">
                                <?php foreach($albumfoto as $afoto){ ?>
                                    <div class="cbp-caption">
                                        <div class="cbp-caption-defaultWrap">
                                        <?php if ($afoto->gambar_album != null) { ?>
                                            <img src="<?=Url::to('@web/upload/album/foto/') ?><?= $afoto->gambar_album ?>" alt="" />
                                        <?php } else { ?>
                                            <img src="<?= Url::to('@web/upload/No_Image_Available.jpg')?>">
                                        <?php } ?>
                                        </div>
                                        <div class="cbp-caption-activeWrap">
                                            <div class="cbp-l-caption-alignCenter">
                                                <div class="cbp-l-caption-body">
                                                    <a href="<?=Url::to(['site/galerifoto', 'id'=>$afoto->slug_album])?>">Lihat Selengkapnya</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cbp-l-grid-projects-title"><?= $afoto->nama_album ?></div>
                                    <div><?= date('d F Y', strtotime ($afoto->tanggal_album)) ?>[<?= $afoto->waktu_album ?>]</div>
                               
                                <?php }?>
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
            <nav aria-label="Page navigation example">
                    <ul class="pagination mt-50">
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
