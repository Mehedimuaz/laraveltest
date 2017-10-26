<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

//create/edit teacher
Route::get('/update', 'UpdateController@index');
Route::post('/update/update', 'UpdateController@update');
Route::get('/show', 'ShowController@show');
Route::get('/UpdateQuestion', 'UpdateQuestionController@index');
Route::delete('/UpdateQuestion', 'UpdateQuestionController@delete');
Route::post('/UpdateQuestion', 'UpdateQuestionController@insert');


Auth::routes();

Route::get('/home', 'HomeController@index');
