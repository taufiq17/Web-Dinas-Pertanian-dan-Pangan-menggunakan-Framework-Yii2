<?php
namespace frontend\controllers;

use Yii;
use yii\base\InvalidParamException;
use yii\web\BadRequestHttpException;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use frontend\models\VBeritaInstansi;

/**
 * 
 */
class BeritaController extends Controller
{
	
	public function actionIndex($id)
	{
		$berita = VBeritaInstansi::find()->where(['slug_berita' => $id])->one();
		$berita->updateCounters(['hit_berita' => 1]);

		return $this->render('index', ['berita' => $berita]);
	}
}