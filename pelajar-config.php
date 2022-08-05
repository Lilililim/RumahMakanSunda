<?php
    include "koneksi.php";

    $AKSI=$_GET["Aksi"];
    $ID_PELAJAR=$_GET["id"];

    if ($AKSI=="Hapus") {
        $QUERY=mysqli_query($KONEKSI, "DELETE FROM `pelajar` WHERE id_pelajar = $ID_PELAJAR");

        if ($QUERY) {
            header ("location: tpelajar.php");
        }
    }

    // if ($AKSI=="verifikasi") {
    //     $QUERY=mysqli_query($KONEKSI, "UPDATE `laporan` SET `status`='1' WHERE `id_laporan`='$ID_PELATIHAN'");

    //     if ($QUERY) {
    //         header ("location: tlaporan.php");
    //     }
    // }
?>