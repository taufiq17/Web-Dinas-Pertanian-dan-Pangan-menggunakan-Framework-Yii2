<?php
namespace frontend\controllers;

use Yii;
use yii\base\InvalidParamException;
use yii\web\BadRequestHttpException;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use frontend\models\VHalaman;

/**
 * 
 */
class BeritaController extends Controller
{
	
	public function actionIndex($id)
	{
		$halaman = VHalaman::find()
			->where([
				'instansi_id' => 'G09005',
				'status_halaman' => 'ON',
				'slug_halaman' => $id
			])
			->orderBy('timestamp_halaman DESC')
			->all();

		$halaman->updateCounters(['hit_halaman' => 1]);

		return $this->render('index', ['halaman' => $halaman]);
	}
}