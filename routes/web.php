<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/infolaravel', function () {
    return view('welcome');
});


Route::post('/upload-sim-cards', 'App\Http\Controllers\AdminImportarSimCardsController@uploadSimCards')->name('upload');
Route::get('/import-sim-cards', 'App\Http\Controllers\AdminImportarSimCardsController@getIndex')->name('import');
Route::get('/vsimcard', 'App\Http\Controllers\AdminVsimcardController@getIndex')->name('vistasim');
Route::get('/vsimcard/historico/{id}/{serial}', 'App\Http\Controllers\AdminVsimcardController@getHistorico');
