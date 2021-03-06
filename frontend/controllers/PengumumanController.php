<?php
namespace frontend\controllers;

use Yii;
use yii\base\InvalidParamException;
use yii\web\BadRequestHttpException;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use frontend\models\VPengumuman;

/**
 * 
 */
class PengumumanController extends Controller
{
	
	public function actionIndex($id)
	{
		$detail_pengumuman = VPengumuman::find()->where([
			'instansi_id' => 'G09005',
			'slug_pengumuman' => $id])->one();
		$detail_pengumuman->updateCounters(['hit_pengumuman' => 1]);

		return $this->render('index', ['detail_pengumuman' => $detail_pengumuman]);
	}

}