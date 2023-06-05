<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CTalpen;
use Illuminate\Support\Facades\Auth;

class PegawaiController extends Controller
{
    public function dashboardPegawai() {
        return view('pegawai/dashboard');
    }
    //alasan penting
    public function riwayatAlpen() {
        $srt = CTalpen::where('nip', Auth::user()->nip)->get();
        return view('pegawai/ct-alpen', ['srt' => $srt]);
    }

    public function simpanAlpen(Request $Request) {
        CTalpen::create([
            'nip' => Auth::user()->nip,
            'nama' => Auth::user()->name,
            'tgl_mul' => $Request->tgl_mul,
            'tgl_sls' => $Request->tgl_sls,
            'alamat' => $Request->alamat,
            'keterangan' => $Request->keterangan,
            'status' => 'pending'
        ]);
        return redirect('pegawai/ctalpen');
    }

    public function printAlpen($id_surat) {
        $print = CTalpen::find($id_surat);
        return view ('pegawai/printalpen', [
            'nama' => $print->nama,
            'nip' => $print->nip,
            'golongan' => $print->golongan,
            'jabatan' => $print->jabatan,
            'durasi' => $print->durasi,
            'tgl_mul' => $print->tgl_mul,
            'tgl_sls' => $print->tgl_sls,
            'alamat' => $print->alamat,
            'keterangan' => $print->keterangan
        ]);
    }
}
