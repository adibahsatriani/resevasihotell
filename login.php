<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Website Hotel Royal</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="assets/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/bower_components/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="assets/bower_components/Ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="assets/dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="assets/plugins/iCheck/square/blue.css">
  <link rel="icon" href="gambar/sistem/logo2.png">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class=" bg-black">
  <div class="container">
    <div class="login-box">

      <center>


        <br>
        <br/>

        <?php 
        if(isset($_GET['alert'])){
          if($_GET['alert'] == "gagal"){
            echo "<div class='alert alert-danger'>Login gagal! username dan password salah!</div>";
          }else if($_GET['alert'] == "logout"){
            echo "<div class='alert alert-success'>Anda telah berhasil logout</div>";
          }else if($_GET['alert'] == "belum_login"){
            echo "<div class='alert alert-warning'>Anda harus login untuk mengakses halaman admin/resepsionis.</div>";
          }
        }
        ?>

      </center>

      <div class="login-box-body">

        <br>
        <br>
        <br>

         <center>
           <a href="index.php"><img width="200px" src="gambar/sistem/logo.png" alt=""></a>
         </center>

        <br>
        <br>
        <br>

        <p class="login-box-msg text-bold">LOGIN</p>

        <form action="periksa_login.php" method="POST">
          <div class="form-group has-feedback">
            <input type="text" class="form-control" placeholder="Username" name="username" required="required" autocomplete="off">
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="password" class="form-control" placeholder="Password" name="password" required="required" autocomplete="off">
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>

           <div class="form-group has-feedback">
            <select class="form-control" name="sebagai" required="required">
              <option value="">- Pilih Sebagai -</option>
              <option value="admin">Admin</option>
              <option value="resepsionis">Resepsionis</option>
            </select>
          </div>
          
          <br>

          <button type="submit" class="btn btn-success btn-block btn-flat btn-block">LOGIN</button>       


         
        </form>

        <br>
         <center>
            <a href="index.php">KEMBALI</a>

            <?php 
            // include 'koneksi.php';
            // $admin = mysqli_query($koneksi,"select * from admin");
            // while($a = mysqli_fetch_array($admin)){
            //   echo $a['admin_id'];
            // }
            ?>


          </center>
        <br>

        <br>
      </div>
    </div>
  </div>


  <script src="assets/bower_components/jquery/dist/jquery.min.js"></script>
  <script src="assets/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

</body>
</html>
