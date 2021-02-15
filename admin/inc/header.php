   <!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">    
		<title>Administrator Web</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="#">

    <title><?php echo $title; ?></title>

    <!-- Bootstrap core CSS -->
    <link href="../assets/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="../assets/bootstrap/css/datetimepicker.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../assets/css/navbar-fixed-top.css" rel="stylesheet">
    <link href="../assets/css/full-slider.css" rel="stylesheet">
    <link href="../assets/css/style.css" rel="stylesheet">

  </head>

  <body>
  <?php
  // TOTAL PESANAN BELUM DI READ
  $qpesanan = mysql_query("select * from pesanan where `read`='0'") or die (mysql_error());
  $totalUnRead = mysql_num_rows($qpesanan);
  // TOTAL PEMBAYARAN YANG BELUM DI VERIFIKASI
  $qPembayaran = mysql_query("select * from pembayaran where `status`='pending'") or die (mysql_error());
  $totalPending = mysql_num_rows($qPembayaran);
  ?>

    <nav class="navbar navbar-default navbar-fixed-top navbar-blue">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">SULTAN CATERING</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="../admin/index.php">Home</a></li>
			<li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Master Data <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="user.php">Data User</a></li>
                <li><a href="produk.php">Data Produk</a></li>
                <li><a href="kategori_produk.php">Data Kategori Produk</a></li>
                <li><a href="kota.php">Kota & Ongkir</a></li>
              </ul>
            </li>
           <a href="pesanan.php">Pesanan
              <?php if ($totalUnRead > 0) { ?> <span class="badge"><?php echo $totalUnRead; ?></span> <?php } ?>
            </a></li>
            <li><a href="pembayaran.php">Pembayaran
              <?php if ($totalPending > 0) { ?> <span class="badge"><?php echo $totalPending; ?></span> <?php } ?>
            </a></li>
            <li><a href="kontak.php">Kontak</a></li>
            <li><a href="../admin/logout.php">Logout</a></li>
          </ul>
        </div>
      </div>
    </nav>
