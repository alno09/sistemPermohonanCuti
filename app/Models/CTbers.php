<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CTbers extends Model
{
    Protected $table = 'ct_bers';
    protected $primaryKey = 'id_surat';
    Protected $fillable = ['jenis_ct', 'nip', 'nama', 'golongan', 'jabatan', 'tgl_mul', 'tgl_sls', 'durasi', 'alamat', 'status', 'keterangan'];
}
