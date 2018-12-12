<?php
$params = array_merge(
    require __DIR__ . '/../../common/config/params.php',
    require __DIR__ . '/../../common/config/params-local.php',
    require __DIR__ . '/params.php',
    require __DIR__ . '/params-local.php'
);

return [
    'id' => 'app-frontend',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
    'controllerNamespace' => 'frontend\controllers',
    'components' => [
        'request' => [
            'csrfParam' => '_csrf-frontend',
        ],
        'user' => [
            'identityClass' => 'common\models\User',
            'enableAutoLogin' => true,
            'identityCookie' => ['name' => '_identity-frontend', 'httpOnly' => true],
        ],
        'session' => [
            // this is the name of the session cookie used for login on the frontend
            'name' => 'advanced-frontend',
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        
        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
                'index.html' => 'site/index',
                'daftar-berita' => 'site/beritainstansi',
                'daftar-pengumuman' => 'site/pengumuman',
                'album-foto' => 'site/albumfoto',
                'album-video' => 'site/albumvideo',
                'galeri-foto' => 'site/galerifoto',
                'galeri-video' => 'site/galerivideo',
                'halaman/sejarah-singkat' => 'site/sejarah',
                'halaman/geografi' => 'site/geografi',
            [
                'pattern' => 'berita/<id>',
                'route' => 'berita',
                'suffix' => '.html',
            ],

            [
                'pattern' =>'pengumuman/<id>',
                'route' => 'pengumuman',
                'suffix' => '.html',
            ],

            [
                'pattern' => 'album-foto/<id>',
                'route' => 'site/albumfoto',
                'suffix' => '.html',
            ],

            [
                'pattern' => 'album-video/<id>',
                'route' => 'site/albumvideo',
                'suffix' => '.html',
            ],

            [
                'pattern' =>'foto/<id>',
                'route' => 'galerifoto',
                'suffix' => '.html',
            ],

            [
                'pattern' => 'video/<id>',
                'route' => 'galerivideo',
                'suffix' => '.html',
            ],

            [
                'pattern' =>'galeri-foto/<id>',
                'route' => 'site/galerifoto',
                'suffix' => '.html',
            ],

            [
                'pattern' => 'galeri-video/<id>',
                'route' => 'site/galerivideo',
                'suffix' => '.html',

            ],

        ],
        
    ],
],
    'params' => $params,
];
