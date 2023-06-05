<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CTalpen;
use Illuminate\Support\Facades\Auth;

class KadivController extends Controller
{
    public function dashboardKadiv() {
        return view('kadiv/dashboard');
    }

    public function riwayatAlpen() {
        $srt = CTalpen::all();
        return view ('kadiv/ct-alpen', ['srt' => $srt]);
    }

    public function simpanAlpen(Request $Request) {
        CTalpen::create([
            'nip' => Auth::user()->nip,
            'nama' => Auth::user()->name,
            'tgl_mul' => $Request->tgl_mul,
            'tgl_sls' => $Request->tgl_sls,
            'alamat' => $Request->alamat,
            'keterangan' => $Request->keterangan,
            'status' => 'diteruskan'
        ]);
        return redirect('kadiv/ctalpen');
    }

    public function teruskanAlpen ($id_cuti, Request $Request) {
        $konf = CTalpen::find( $id_cuti);
        $konf->status = $Request->status;
        $konf->save();
        return redirect ('kadiv/ctalpen');
    }
}
