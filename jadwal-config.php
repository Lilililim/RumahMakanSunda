<?php
    include "koneksi.php";

    $AKSI=$_GET["Aksi"];
    $ID_PELATIHAN=$_GET["id"];

    if ($AKSI=="Hapus") {
        $QUERY=mysqli_query($KONEKSI, "DELETE FROM `jadwal` WHERE id_jadwal = $ID_PELATIHAN");

        if ($QUERY) {
            header ("location: tjadwal.php");
        }
    }

    if ($AKSI=="verifikasi") {
        $QUERY=mysqli_query($KONEKSI, "UPDATE `laporan` SET `status`='1' WHERE `id_laporan`='$ID_PELATIHAN'");

        if ($QUERY) {
            header ("location: tlaporan.php");
        }
    }
?>