<!-- Footer Section Begin -->
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="footer__about">
                    <div class="footer__logo">
                        <a href="#"><img src="gambar/sistem/logo3.png" alt=""></a>
                    </div>
                    <p>Cari kamar terbaik dengan harga termurah. mewah kamar nya, murah harganya.</p>
                    <a href="#"><img src="frontend/img/payment.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-2 offset-lg-1 col-md-3 col-sm-6">
                <div class="footer__widget">
                    <h6>Informasi</h6>
                    <ul>
                        <li><a href="tentang.php">Tentang</a></li>
                        <li><a href="kontak.php">Kontak Kami</a></li>
                        <li><a href="masuk.php">Login Customer</a></li>
                        <li><a href="daftar.php">Daftar Customer</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-6">
                <div class="footer__widget">
                    <h6>Kamar</h6>
                    <ul>
                        <?php 
                        $data = mysqli_query($koneksi,"SELECT * FROM kategori WHERE kategori_id != 1");
                        while($d = mysqli_fetch_array($data)){
                            ?>
                            <li><a href="kategori.php?id=<?php echo $d['kategori_id']; ?>"><?php echo $d['kategori_nama']; ?></a></li>
                            <?php 
                        }
                        ?>
                        <li><a href="kamar.php">Semua Kamar</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3 offset-lg-1 col-md-6 col-sm-6">
                <div class="footer__widget">
                    <h6>NewLetter</h6>
                    <div class="footer__newslatter text-white">
                        <p>Follow sosial media <b>Royale Hotel</b></p>
                        <a class="mr-2" target="_blank" href="#"><i class="fa fa-instagram"></i></a>
                        <a class="mr-2" target="_blank" href="#"><i class="fa fa-twitter"></i></a>
                        <a class="mr-2" target="_blank" href="#"><i class="fa fa-facebook"></i></a>
                        <a class="mr-2" target="_blank" href="#"><i class="fa fa-linkedin"></i></a>
                        <a class="mr-2" target="_blank" href="#"><i class="fa fa-github"></i></a>

                        <br>
                        <br>
                        <h6 class="m-0">Fasilitas Hotel</h6>
                        <?php   
                        $fasilitas = mysqli_query($koneksi,"select * from fasilitas_hotel order by fh_nama asc");
                        while($f = mysqli_fetch_array($fasilitas)){
                            ?>
                            | <small><i class="fa <?php echo $f['fh_icon'] ?>"></i> <?php echo $f['fh_nama'] ?></small>
                            <?php
                        }   
                        ?>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="footer__copyright__text">
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    <p>Copyright © <?php echo date('Y'); ?> All rights reserved | This web is made with by <a href="https://colorlib.com" target="_blank">Butterfly x Royale Hotel</a></p>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- Footer Section End -->

<!-- Search Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch">+</div>


        <form action="kamar.php" method="get" class="search-model-form">
            <input type="text" name="cari" placeholder="Masukkan Pencarian .." id="search-input" placeholder="Search here.....">
        </form>

    </div>
</div>
<!-- Search End -->

<!-- Js Plugins -->
<script src="frontend/js/jquery-3.3.1.min.js"></script>
<script src="frontend/js/bootstrap.min.js"></script>
<script src="frontend/js/jquery.nice-select.min.js"></script>
<script src="frontend/js/jquery.nicescroll.min.js"></script>
<script src="frontend/js/jquery.magnific-popup.min.js"></script>
<script src="frontend/js/jquery.countdown.min.js"></script>
<script src="frontend/js/jquery.slicknav.js"></script>
<script src="frontend/js/mixitup.min.js"></script>
<script src="frontend/js/owl.carousel.min.js"></script>

<script src="assets/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>

<script src="frontend/js/main.js"></script>

</body>


<script>
    $(document).ready(function(){

        $(document).on("click",".rating_bintang", function(){
            var ke = $(this).attr("ke");

            var angka = $(this).attr("id");

            $(".rating_"+ke+"_1").removeClass("fa-star").addClass("fa-star-o");
            $(".rating_"+ke+"_2").removeClass("fa-star").addClass("fa-star-o");
            $(".rating_"+ke+"_3").removeClass("fa-star").addClass("fa-star-o");
            $(".rating_"+ke+"_4").removeClass("fa-star").addClass("fa-star-o");
            $(".rating_"+ke+"_5").removeClass("fa-star").addClass("fa-star-o");



            for(a = 1; a <= angka; a++){
                var xxx = ".rating_"+ke+"_"+a;
                $(xxx).toggleClass("fa-star","addOrRemove");
                $(xxx).toggleClass("fa-star-o","addOrRemove");
            }

            $(".form_rating_"+ke).val(angka);

        });



        function numberWithCommas(x) {
            return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        }

        $('.jumlah').on("keyup",function(){
            var nomor = $(this).attr('nomor');

            var jumlah = $(this).val();

            var harga = $("#harga_"+nomor).val();

            var total = jumlah*harga;

            var t = numberWithCommas(total);

            $("#total_"+nomor).text("Rp. "+t+" ,-");
        });
    });


</script>

<script type="text/javascript">
    $(document).ready(function(){

        function numberWithCommas(x) {
            return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        }


        $('input:checkbox').change(function (){
            var total = 0;
            $('input:checkbox:checked').each(function(){ 
                total += isNaN(parseInt($(this).attr('id'))) ? 0 : parseInt($(this).attr('id'));
            });     
            $("#total").text("Rp. " + numberWithCommas(total) + ",-");
            var harga = $("#harga_per_malam").val();
            var x_total = parseInt(harga) + parseInt(total);
            $("#total_harga").val( x_total );
            $(".total_bayar").text("Rp. " + numberWithCommas(x_total) + ",-");

        });


        $('.datepicker').datepicker({
            format: 'dd-mm-yyyy',
            startDate: '0d',
            autoclose: true 
         });

    });
</script>

</html>