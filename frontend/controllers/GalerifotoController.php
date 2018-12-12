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
class GalerifotoController extends Controller
{
	
	public function actionIndex($id)
	{
		$foto = VGalleryFoto::find()->where(['slug_gallery' =>$id])->one();
		$foto->updateCounters(['hit_gallery' => 1]);

		return $this->render('index', ['foto' => $foto]);
	}
}