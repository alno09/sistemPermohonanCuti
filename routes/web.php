<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\PegawaiController;
use App\Http\Controllers\KadivController;
use App\Http\Controllers\PimpinanController;

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

/* Route::get('/', function () {
    return view('welcome');
}); */

Auth::routes();

Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

//ALASAN PENTING
//pegawai
Route::get('/pegawai/dashboard', [PegawaiController::class, 'dashboardPegawai']);
Route::get('/pegawai/ctalpen', [PegawaiController::class, 'riwayatAlpen']);
Route::Post('/pegawai/ctalpen/simpan', [PegawaiController::class, 'simpanAlpen']);
Route::get('/pegawai/print/{id_surat}', [PegawaiController::class, 'printAlpen']);
//kadiv
Route::get('/kadiv/dashboard', [KadivController::class, 'dashboardKadiv']);
Route::get('/kadiv/ctalpen', [KadivController::class, 'riwayatAlpen']);
Route::Post('/kadiv/ctalpen/simpan', [kadivController::class, 'simpanAlpen']);
Route::put('/kadiv/teruskan/{id_surat}', [KadivController::class, 'teruskanAlpen'])->name('kadiv.update');
//pimpinan
Route::get('/pimpinan/dashboard', [PimpinanController::class, 'dashboardPimpinan']);
Route::get('/pimpinan/ctalpen', [PimpinanController::class, 'riwayatAlpen']);
Route::put('/pimpinan/setujui/{id_surat}', [PimpinanController::class, 'setujuiAlpen'])->name('pimpinan.update');

//CUTI BESAR

