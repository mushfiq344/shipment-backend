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


Route::post('movieSubmit', 'MovieController@movieSubmit');
Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


Route::post('register', 'UserController@register');
Route::post('login', 'UserController@authenticate');
Route::get('open', 'DataController@open');

Route::group(['middleware' => ['jwt.verify']], function () {

    Route::get('/movie/{slug_name}', 'MovieController@movie');
    Route::get('user', 'UserController@getAuthenticatedUser');
    Route::get('closed', 'DataController@closed');
    Route::get('/comments/{slug_name}', 'MovieController@comments');
    Route::post('/insertComment', 'MovieController@insertComment');
});
Route::get('/allShipments', 'ShipmentController@allShipments');
Route::get('/shipmentById/{id}', 'ShipmentController@shipmentById');
Route::get('/shipmentsOrderByPrice', 'ShipmentController@shipmentsOrderByPrice');
Route::get('/shipmentsOrderByRating', 'ShipmentController@shipmentsOrderByRating');
Route::get('/shipmentsOrderByName', 'ShipmentController@shipmentsOrderByName');
