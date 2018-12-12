<?php
namespace frontend\controllers;

use Yii;
use yii\base\InvalidParamException;
use yii\web\BadRequestHttpException;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use yii\data\Pagination;
use frontend\models\VAlbumFoto;
use frontend\models\VAlbumVideo;
use frontend\models\VBerita;
use frontend\models\VBeritaInstansi;
use frontend\models\VBeritaKota;
use frontend\models\VGalleryFoto;
use frontend\models\VGalleryVideo;
use frontend\models\VHalaman;
use frontend\models\VLinkTerkait;
use frontend\models\VPengumuman;
use frontend\models\VMenu;
use frontend\models\VSubmenu;
use frontend\models\VWebsite;
/**
 * Site controller
 */
class SiteController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout', 'signup'],
                'rules' => [
                    [
                        'actions' => ['signup'],
                        'allow' => true,
                        'roles' => ['?'],
                    ],
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return mixed
     */
    public function actionIndex()
    {
        $berita_terbaru_instansi = VBeritaInstansi::find()
            ->where([
                        'instansi_id' => 'G09005',
                        'instansi_berita' => 'ON'
                    ])
            ->orderBy('tanggal_berita DESC')
            ->limit(4)
            ->all();

        $berita_utama_instansi = VBeritaInstansi::find()
            ->where([
                        'instansi_id' => 'G09005',
                        'instansi_berita' => 'ON',
                        'utama_instansi_berita' => 'ON'
                    ])
            ->orderBy('tanggal_berita DESC', 'waktu_berita DESC')
            ->limit(5)
            ->all();

        $berita_kota = VBeritaInstansi::find()
            ->where([
                        'instansi_id' => 'G09005',
                        'kota_berita' => 'ON'
                    ])
            ->orderBy('tanggal_berita DESC')
            ->limit(4)
            ->all();

        $pengumuman = VPengumuman::find()
            ->where([
                        'instansi_id' => 'G09005',
                        'utama_instansi_pengumuman' => 'ON',
                        'status_pengumuman' => 'ON'
                    ])
            ->orderBy('tanggal_pengumuman DESC')
            ->all();

        $widget = VWebsite::find()
            ->where([
                        'instansi_id' => 'G09005',
                    ])
            ->all();

        $albumfoto = VAlbumFoto::find()
            ->where([
                        'id_instansi' => 'G09005',
                        'status_album' => 'ON'
                    ])
            ->orderBy('tanggal_album DESC')
            ->all();

        $albumvideo = VAlbumVideo::find()
            ->where([
                        'id_instansi' => 'G09005',
                        'status_album' => 'ON'
                    ])
            ->orderBy('tanggal_album DESC')
            ->all();

        $galerifoto = VGalleryFoto::find()
            ->where([
                        'id_instansi' => 'G09005',
                        'status_album' => 'ON',
                        'status_gallery' => 'ON'
                    ])
            ->orderBy('tanggal_gallery DESC')
            ->all();

        $galerivideo = VGalleryVideo::find()
            ->where([
                        'id_instansi' => 'G09005',
                        'status_album' => 'ON',
                        'status_gallery' => 'ON'
                    ])
            ->orderBy('tanggal_gallery DESC')
            ->all();

        return $this->render('index', [
            'berita_terbaru_instansi' => $berita_terbaru_instansi,
            'berita_utama_instansi' => $berita_utama_instansi,
            'berita_kota' => $berita_kota,
            'pengumuman' => $pengumuman,
            'widget' => $widget,
            'albumfoto' => $albumfoto,
            'albumvideo' => $albumvideo,
            'galerifoto' => $galerifoto,
            'galerivideo' => $galerivideo
        ]);
       
    }

    public function actionSejarah()
    {
        $sejarah = VHalaman::find()
            ->where([
                        'instansi_id' => 'G09005',
                        'id_halaman' => '20180411085112',
                        'status_halaman' => 'ON'
                    ])
            ->orderBy('timestamp_halaman DESC')
            ->all();
        return $this->render('sejarah', [
            'sejarah' => $sejarah]);
    }

    public function actionGeografi()
    {
        $geografi = VHalaman::find()
            ->where([
                        'instansi_id' => 'G09005',
                        'id_halaman' => '20180411090113',
                        'status_halaman' => 'ON'
                    ])
            ->orderBy('timestamp_halaman DESC')
            ->all();
        return $this->render('geografi', [
            'geografi' => $geografi]);
    }

    public function actionBeritainstansi()
    {
         $query = VBeritaInstansi::find()
            ->where([
                        'instansi_id' => 'G09005',
                        'instansi_berita' => 'ON'
                    ])
            ->orderBy('tanggal_berita DESC', 'waktu_berita DESC');
            $countQuery = $query->count();
            $pages = new Pagination(['pageSize' => 3, 'totalCount' => $countQuery]);
            $berita_instansi = $query->offset($pages->offset)
            ->limit($pages->limit)
            ->all();
        
        return $this->render('beritainstansi', [
            'berita_instansi' => $berita_instansi,
            'pages' => $pages,
        ]);
    }

    public function actionAlbumfoto ()
    {
        $album  = VAlbumFoto::find()
            ->where([
                        'id_instansi' => 'G09005',
                        'status_album' => 'ON'
                    ])
            ->orderBy('tanggal_album DESC');
            $countQuery = $album->count();
            $pages = new Pagination(['pageSize' => 9, 'totalCount' => $countQuery]);
            $albumfoto = $album->offset($pages->offset)
            ->limit($pages->limit)
            ->all();
            
        return $this->render('albumfoto', [
            'albumfoto' => $albumfoto,
            'pages' => $pages,
        ]);
    }

    public function actionGalerifoto()
    {
        $galerifoto = VGalleryFoto::find()
            ->where([
                        'id_instansi' => 'G09005',
                        'status_album' => 'ON',
                        'status_gallery' => 'ON'
                    ])
            ->orderBy('tanggal_gallery DESC')
            ->all();
        return $this->render('galerifoto', [
            'galerifoto' => $galerifoto]);
    }

    public function actionAlbumvideo ()
    {
        $query = VAlbumVideo::find()
            ->where([
                        'id_instansi' => 'G09005',
                        'status_album' => 'ON'
                    ])
            ->orderBy('tanggal_album DESC');
            $countQuery = $query->count();
            $pages = new Pagination(['pageSize' => 9, 'totalCount' => $countQuery]);
            $albumvideo = $query->offset($pages->offset)
            ->limit($pages->limit)
            ->all();
        return $this->render('albumvideo', [
            'albumvideo' => $albumvideo,
            'pages' => $pages,
        ]);
    }

    public function actionGalerivideo()
    {
        $galerivideo = VGalleryVideo::find()
            ->where([
                        'id_instansi' => 'G09005',
                        'status_album' => 'ON',
                        'status_gallery' => 'ON'
                    ])
            ->orderBy('tanggal_gallery DESC')
            ->all();
        return $this->render('galerivideo', [
            'galerivideo' => $galerivideo]);
    }

    public function actionPengumuman()
    {
            $query= VPengumuman::find()
            ->where([
                        'instansi_id' => 'G09005',
                        'utama_instansi_pengumuman' => 'ON',
                        'status_pengumuman' => 'ON'
                    ])
            ->orderBy('tanggal_pengumuman DESC');
            $countQuery = $query->count();
            $pages = new Pagination(['pageSize' => 6, 'totalCount' => $countQuery]);
            $pengumuman = $query->offset($pages->offset)
            ->limit($pages->limit)
            ->all();
        return $this->render('pengumuman', [
            'pengumuman' => $pengumuman,
            'pages' => $pages,
        ]);
    }

     public function actionHeader()
    {
        return $header = VWebsite::find()
            ->where([
                        'instansi_id' => 'G09005',
                        'id_website' => '20180809093341'
                    ])
            ->all();
    }

    public function actionFooter()
    {
        return $footer = VWebsite::find()
            ->where([
                        'instansi_id' => 'G09005',
                        'id_website' => '20180809093341'
                    ])
            ->all();
    }

    public function actionLink()
    {
        return $link = VLinkTerkait::find()
            ->where([
                        'instansi_id' => 'G09005',
                    ])
            ->orderBy('urutan_link DESC')
            ->all();
    }

    public function actionBeritaPopuler()
    {
        return $berita_populer = VBeritaInstansi::find()
            ->where([
                        'instansi_id' => 'G09005',
                        'instansi_berita' => 'ON'
                ])
            ->orderBy('hit_berita DESC')
            ->limit(2 )
            ->all();
    }

    public function actionPengumumanPopuler()
    {
        return $pengumuman_populer = VPengumuman::find()
            ->where([
                        'instansi_id' => 'G09005',
                        'utama_instansi_pengumuman' => 'ON',
                        'status_pengumuman' => 'ON'
                    ])
            ->orderBy('hit_pengumuman DESC')
            ->limit(5)
            ->all();
    }

    public function actionMenu()
    {
        return $menu = VMenu::find()
            ->where([
                        'instansi_id' => 'G09005'
                    ])
            ->orderBy('urutan_menu ASC')
            ->all();
    }

    public function actionSubMenu()
    {
        return $submenu = VSubmenu::find()
            ->where([
                        'instansi_id' => 'G09005'
                    ])
            ->orderBy('urutan_submenu ASC')
            ->all();
    }

    public function actionHalaman()
    {
        return $halaman = VHalaman::find()
            ->where([
                        'instansi_id' => 'G09005',
                        'status_halaman' => 'ON'
                    ])
            ->orderBy('timestamp_halaman DESC')
            ->all();
    }

}
