<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CTalpen;
use Illuminate\Support\Facades\Auth;

class PimpinanController extends Controller
{
    public function dashboardPimpinan() {
        return view('pimpinan/dashboard');
    }

    public function riwayatAlpen() {
        $srt = CTalpen::all();
        return view ('pimpinan/ct-alpen', ['srt' => $srt]);
    }

    public function setujuiAlpen ($id_cuti, Request $Request) {
        $acc= CTalpen::find( $id_cuti);
        $acc->status = $Request->status;
        $acc->save();
        return redirect ('pimpinan/ctalpen');
    }
}
