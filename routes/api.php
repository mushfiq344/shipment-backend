<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/



Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});




Route::get('/', 'ShipmentController@index');
Route::get('/allShipments', 'ShipmentController@allShipments');
Route::get('/shipmentById/{id}', 'ShipmentController@shipmentById');
Route::get('/shipmentsOrderById', 'ShipmentController@shipmentsOrderById');
Route::get('/shipmentsOrderByTotal', 'ShipmentController@shipmentsOrderByTotal');
Route::get('/shipmentsOrderByName', 'ShipmentController@shipmentsOrderByName');
Route::get('/shipmentsSearchByName/{name?}', 'ShipmentController@shipmentsSearchByName');
Route::post('/updateShipment', 'ShipmentController@updateShipment');
