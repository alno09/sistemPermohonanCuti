<!DOCTYPE html>
<head>
    <title>Surat Cuti.pdf</title>
    <style>
        table tr .text2 {
            text-align: center;
        }
        table tr td {
            font-size: 13px ;
        }
        table tr .text{
            text-align: right;
            font-size: 13px ;
        }
    </style>
</head>
<body>
    <center>
        <table>
            <tr>
                <td><img src="{{ asset('aset/img/logo.png') }}" width="110" height="103"></td>
                <td>
                    <center>
                        <font size="4">Formulir Permohonan Cuti 2023</font><br>
                        <font size="5"><b>Sekretariat DPRD Kota Yogyakarta</b></font><br>
                        <font size="1"><i>Jl. Ipda Tut Harsono No.43, Muja Muju, Kec. Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55165</font></i><br>
                    </center>
                </td>
            </tr>
            <tr>
                <td colspan="2"><hr></td>
            </tr>
        </table>
        <table width="569">
            <tr>
                <td class="text">Yogyakarta, 22 Mei 2023</td>
            </tr>
        </table>
        <br>
        <table width="569">
            <tr>
                <td>
                    <font size="2">Kepada<br>Yth. Kepala Kepegawaian<br> Melalui Pimpinan<br> Sekretariat DPRD<br>Yogyakarta</font>
                </t
            </tr>
        </table>
        <br>
        <table width="569">
            <tr>
                <font size="2"> Yang bertanda tangan dibawah ini :</font>
            </tr>
            <tr>
                <td>Nama </td>
                <td width="569"> : {{ $nama }} </td>
            </tr>
            <tr>
                <td>NIP</td>
                <td width="569"> : {{ $nip }} </td>
            </tr>
            <tr>
                <td>Golongan </td>
                <td width="569"> : {{ $golongan }} </td>
            </tr>
            <tr>
                <td>Jabatan</td>
                <td width="569"> : {{ $jabatan }} </td>
            </tr>
            <tr>
                <td>Satuan Organisasi</td>
                <td width="569"> : SEKRETARIAT DPRD YOGYAKARTA </td>
            </tr>
        </table>
        <table  width="569">
            <tr>
                <td>
                    <font size="2"> <p align= "justify" style="text-indent: 45px;"> Dengan ini saya mengajukan permohonan cuti alasan penting selama {{ $durasi }}, mulai tanggal {{ $tgl_mul }}
                    sampai dengan tanggal {{ $tgl_sls }}, karena {{ $keterangan }}.
                    <font size="2"> <p align= "justify" style="text-indent: 45px;"> Selama menjalankan cuti alamat saya adalah di {{ $alamat }} </font></p>
                    <font size="2"> <p align= "justify" style="text-indent: 45px;"> Demikian permohonan cuti sakit ini saya buat untuk dapat dipertimbangkan sebagaimana mestinya. </font></p>
                </td>
            </tr>
        </table>
        <table  width="569">
            <tr>
                <td width="430"></td>
                <td class="text2" align="center">Hormat Saya,<br><br><br><br><br><br>NIP</td>
            </tr>
        </table>
        <br>
        <table  border ='1' width="569">
            <tr>
                <td><u>CATATAN PEJABAT KEPEGAWAIAN</u><br>Cuti yang telah diambil dalam tahun yang
                    bersangkutan (Konfirmasi dengan Bagian Kepegawaian)<br><br> 1. Cuti Tahunan  : <br>2. Cuti Alasan Penting  : <br>3. Cuti Bersalin  :
                <br>4. Cuti Sakit  : <br> 5. Cuti Besar  :<br> </td>
                <td><u>CATATAN PERTIMBANGAN ATASAN LANGSUNG</u><br><br><br><br><br><br><u>KEPUTUSAN PEJABAT YANG <br> BERWENANG MEMBERIKAN CUTI</u>
                <br> Kepala Kepegawaian</td>
            </tr>
    </center>
    <script>
        window.print();
    </script>
</body>
</html>
