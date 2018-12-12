<?php

namespace frontend\assets;

use yii\web\AssetBundle;

/**
 * Main frontend application asset bundle.
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        //'css/site.css',
        'css/bootstrap.min.css',
        'css/animate.css',
        'css/cubeportfolio.min.css',
        'css/custom-fonts.css',
        'css/def.css',
        'css/flexslider.css',
        'css/font-awesome.css',
        'css/overwrite.css',
        'css/site.css',
        'css/style.css',
        'css/theme.css',
        'css/w3.css',
        'skins/default.css',
        'bodybg/bg1.css',
        'plugins/flexslider/flexslider.css'

    ];
    public $js = [
        'js/jquery.min.js',
        'js/modernizr.custom.js',
        'js/jquery.easing.1.3.js',
        'js/bootstrap.min.js',
        'plugins/flexslider/jquery.flexslider-min.js',
        'plugins/flexslider/flexslider.config.js',
        'js/jquery.appear.js',
        'js/stellar.js',
        'js/classie.js',
        'js/uisearch.js',
        'js/jquery.cubeportfolio.min.js',
        'js/google-code-prettify/prettify.js',
        'js/animate.js',
        'js/custom.js'
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
