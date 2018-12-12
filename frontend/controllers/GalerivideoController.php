<?php
namespace frontend\controllers;

use Yii;
use yii\base\InvalidParamException;
use yii\web\BadRequestHttpException;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use frontend\models\VAlbumVideo;
use frontend\models\VGalleryVideo;

/**
 * 
 */
class GalerivideoController extends Controller
{
	
	public function actionIndex($id)
	{
		$video = VGalleryVideo::find()->where(['slug_gallery' => $id])->one();
		$video->updateCounters(['hit_gallery' => 1]);

		return $this->render('index', ['video' => $video]);
	}
}