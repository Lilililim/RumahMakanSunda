<?php
  session_start();
?>

<!doctype html>
<html lang="en" class="h-100">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.101.0">
    <title>Yuk Belajar</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/cover/">

<link href="./dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="style.css" rel="stylesheet">
  </head>
  <body class="d-flex h-100 text-center bg-anime">
    
<div class="d-flex w-100 h-100 p-3 mx-auto flex-column">
  <header class="mb-auto px-5">
    <div class="text-white">
      <h3 class="float-md-start mb-0">UJWP</h3>
      <nav class="nav nav-masthead justify-content-center float-md-end">
        <a class="nav-link fw-bold py-1 px-0 active" aria-current="page" href="index.php">Beranda</a>
        <a class="nav-link fw-bold py-1 px-0" href="course.php">Course</a>

        <?php
              if (isset ($_SESSION["role"])=="pelajar") {
                echo '
                <a class="nav-link fw-bold py-1 px-0" href="logout.php">Log Out</a>
                ';
              }
              else {
                echo '
                <a class="nav-link fw-bold py-1 px-0" href="login.php">Login</a>
                ';
              }
            ?>

      </nav>
    </div>
  </header>

  <main class="px-3 text-white">
    <h1>Ingin belajar programming?</h1>
    <p class="lead">UJWP Sebagai mahasiswa Universitas XXX, disini kamu dapat memilih jenis pelatihan mana yang ingin kamu pelajari.</p>
    <p class="lead">
      <a href="course.php" class="btn btn-lg btn-secondary fw-bold border-white bg-white">Daftar Pembelajaran</a>
    </p>
  </main>

  <footer class="mt-auto text-white">
    <p>Bila ada pertanyaan, hubungi kami melalui WhatsApp <a href="#" class="text-white fw-bold">085712345678</a>.</p>
  </footer>
</div>
    
  </body>
</html>
