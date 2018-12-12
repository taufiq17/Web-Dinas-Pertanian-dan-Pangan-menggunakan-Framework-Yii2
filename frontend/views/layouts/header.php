<?php 
     use yii\helpers\Url;
     use frontend\models\VSubmenu;
     use frontend\models\VChildmenu;
?>

<div id="wrapper">
        <!-- start header -->
        <header>
            <div class="top">
                <div class="container">
                    <?php foreach(frontend\controllers\SiteController::actionHeader() as $row) ?>
                    <div class="row">
                        <div class="col-md-6">
                            <ul class="topleft-info">
                                <li><?= $row->nama_website ?></li>
                            </ul>
                        </div>
                        <div class="col-md-6">
                            <div id="sb-search" class="sb-search">
                                <form>
                                    <input class="sb-search-input" placeholder="Pencarian Berita . . ." type="text" value="" name="search" id="search">
                                    <input class="sb-search-submit" type="submit" value="">
                                    <span class="sb-icon-search" title="Click to start searching"></span>
                                </form>
                            </div>

                        </div>
                    </div>
                    <?php ?>
                </div>
            </div>

            <div class="navbar navbar-default navbar-static-top">
                <div class="container">
                    <div class="navbar-header">
                        <?php foreach(frontend\controllers\SiteController::actionHeader() as $row) ?>
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                        <a class="navbar-brand" href="index.html">
                        <?php if($row->logo_website != null) { ?>
                        <img src="<?=Url::to('@web/upload/logo/') ?><?= $row->logo_website ?>" alt="" class="img-responsive" width="145" height="35"/></a>
                        <?php } else { ?>
                             <img src="<?= Url::to('@web/upload/No_Image_Available.jpg')?>">
                        <?php } ?>
                            
                        <?php ?>
                    </div>
                    <div class="navbar-collapse collapse ">
                        <ul class="nav navbar-nav">
                            <?php foreach (frontend\controllers\SiteController::actionMenu() as $menu) { ?>

                                <?php if ($menu->link_menu != '#') { ?>
                                    <li><a href="<?= $menu->link_menu ?>"><?= $menu->nama_menu ?></a></li>
                                <?php } else { ?>

                                    <?php
                                        $idmenu = $menu->id_menu;
                                        $submenu = VSubmenu::find()
                                                    ->where([
                                                                'instansi_id' => 'G09005',
                                                                'id_menu' => $idmenu
                                                            ])
                                                    ->orderBy('urutan_submenu')
                                                    ->all();
                                    ?>

                                    <?php if (count($submenu) > 0) { ?>
                                        <li class="dropdown"><a href="<?= $menu->link_menu ?>" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false"><?= $menu->nama_menu ?><i class="fa fa-angle-down"></i></a>
                                            <ul class="dropdown-menu">
                                                <?php foreach($submenu as $submenu) { ?>
                                                    <?php
                                                        $idsub = $submenu->id_submenu;
                                                        $childmenu = VChildmenu::find()
                                                                     ->where([
                                                                                'instansi_id' => 'G09005',
                                                                                'id_submenu' => $idsub
                                                                                ])
                                                                            ->orderBy('urutan_childmenu')
                                                                            ->all();
                                                    ?>
                                                <?php if (count($childmenu) > 0) { ?>
                                                    <li class="dropdown-submenu">
                                                        <a href="<?= $submenu->link_submenu ?>" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown"><?= $submenu->nama_submenu ?></a>
                                                            <ul class="dropdown-menu">
                                                                <?php foreach($childmenu as $cm) { ?>
                                                                    <li><a href="<?= $cm->link_childmenu ?>" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">
                                                                        <?= $cm->nama_childmenu ?></a></li>
                                                                <?php } ?>
                                                            </ul>
                                                    </li>
                                                <?php } else { ?>
                                                    <li class="dropdown"><a href="<?= $submenu->link_submenu ?>" ><?= $submenu->nama_submenu ?></a></li>
                                                <?php } ?>
                                                <?php } ?>
                                                </ul>
                                            </li>
                                        <?php } else { ?>
                                            <li class="dropdown"><a href="<?= $menu->link_menu ?>" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false"><?= $menu->nama_menu ?>
                                            <i class="fa fa-angle-down"></i></a></li>
                                        <?php } ?>
                                    <?php } ?>
                                <?php } ?>
                            </ul>
                        </div>
                </div>
            </div>
        </header>
    </div>
        <!-- end header -->