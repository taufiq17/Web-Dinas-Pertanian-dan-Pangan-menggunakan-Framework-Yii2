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
class AlbumvideoController extends Controller
{
	
	public function actionIndex($id)
	{
		$albumvideo = VAlbumVideo::find()->where(['slug_album' =>$id])->one();
		$albumfoto->updateCounters(['hit_album' => 1]);

		return $this->render('index', ['albumvideo' => $albumvideo]);
	}
}