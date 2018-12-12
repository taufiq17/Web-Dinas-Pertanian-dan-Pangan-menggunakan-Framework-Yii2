<?php
namespace frontend\controllers;

use Yii;
use yii\base\InvalidParamException;
use yii\web\BadRequestHttpException;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use frontend\models\VAlbumFoto;
use frontend\models\VGalleryFoto;

/**
 * 
 */
class AlbumfotoController extends Controller
{
	
	public function actionIndex($id)
	{
		$albumfoto = VAlbumFoto::find()->where(['slug_album' =>$id])->one();
		$albumfoto->updateCounters(['hit_album' => 1]);

		return $this->render('index', ['albumfoto' => $albumfoto]);
	}
}