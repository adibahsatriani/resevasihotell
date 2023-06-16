<?php include('header.php'); ?>


<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb__text">
                    <h4>Tentang Hotel</h4>
                    <div class="breadcrumb__links">
                        <a href="index.php">Home</a>
                        <span>Tentang</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- About Section Begin -->
<section class="about spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="about__pic">
                    <img src="frontend/img/about/about-us.jpg" alt="">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="about__item">
                    <h4>Enjoy your holiday</h4>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptas in rem est quo eaque, quos nam debitis? In molestiae, impedit ab sed voluptate ad, ducimus unde molestias, sapiente deleniti eum.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="about__item">
                    <h4>Nikmati Liburanmu</h4>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis molestiae doloremque illo architecto ipsa aut pariatur temporibus doloribus unde repellat obcaecati voluptatem cum vel animi hic inventore, sed nemo facere?</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="about__item">
                    <h4>Dengan Hotel Royale</h4>
                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Esse, accusamus harum fuga sunt officiis animi perferendis nobis quae quisquam odio reprehenderit ad adipisci quod consectetur porro, quidem sapiente delectus nam.</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- About Section End -->

<!-- Testimonial Section Begin -->
<section class="testimonial">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6 p-0">
                <div class="testimonial__text">
                    <span class="icon_quotations"></span>
                    <p>
                        “Booking kamar jadi lebih mudah di website royale hotel. tinggal buka websitenya, lihat kamar,
                        dan checkout deh. kamarnya juga bagus2 dan mewah.
                        serasa menginap di hotel bintang 100.”
                    </p>
                    <div class="testimonial__author">
                        <div class="testimonial__author__pic">
                            <img src="frontend/img/about/testimonial-author.jpg" alt="">
                        </div>
                        <div class="testimonial__author__text">
                            <h5>Budi Susanto</h5>
                            <p>Web Developer</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 p-0">
                <div class="testimonial__pic set-bg" data-setbg="frontend/img/about/testimonial-pic.jpg"></div>
            </div>
        </div>
    </div>
</section>
<!-- Testimonial Section End -->

<!-- Counter Section Begin -->
<section class="counter spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="counter__item">
                    <?php 
                    $customer = mysqli_query($koneksi,"SELECT * FROM customer");
                    ?>
                    <div class="counter__item__number">
                        <h2 class="cn_num"><?php echo mysqli_num_rows($customer); ?></h2>
                    </div>
                    <span>Pelanggan <br />Kami</span>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="counter__item">
                    <?php 
                    $kamar = mysqli_query($koneksi,"SELECT * FROM kamar");
                    ?>
                    <div class="counter__item__number">
                        <h2 class="cn_num"><?php echo mysqli_num_rows($kamar); ?></h2>
                    </div>
                    <span>Total <br />Kamar</span>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="counter__item">
                    <?php 
                    $kategori = mysqli_query($koneksi,"SELECT * FROM kategori where kategori_id != 1");
                    ?>
                    <div class="counter__item__number">
                        <h2 class="cn_num"><?php echo mysqli_num_rows($kategori); ?></h2>
                    </div>
                    <span>Total Kategori <br />Kamar</span>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="counter__item">
                    <div class="counter__item__number">
                        <h2 class="cn_num">100</h2>
                        <strong>%</strong>
                    </div>
                    <span>Happy <br />Customer</span>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Counter Section End -->

<!-- Client Section Begin -->
<section class="clients spad ">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <br><br>
                <div class="section-title">
                    <span>Partner</span>
                    <h2>Happy Clients</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-4 col-6">
                <a href="#" class="client__item"><img src="frontend/img/clients/client-1.png" alt=""></a>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-4 col-6">
                <a href="#" class="client__item"><img src="frontend/img/clients/client-2.png" alt=""></a>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-4 col-6">
                <a href="#" class="client__item"><img src="frontend/img/clients/client-3.png" alt=""></a>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-4 col-6">
                <a href="#" class="client__item"><img src="frontend/img/clients/client-4.png" alt=""></a>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-4 col-6">
                <a href="#" class="client__item"><img src="frontend/img/clients/client-5.png" alt=""></a>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-4 col-6">
                <a href="#" class="client__item"><img src="frontend/img/clients/client-6.png" alt=""></a>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-4 col-6">
                <a href="#" class="client__item"><img src="frontend/img/clients/client-7.png" alt=""></a>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-4 col-6">
                <a href="#" class="client__item"><img src="frontend/img/clients/client-8.png" alt=""></a>
            </div>
        </div>
    </div>
</section>
<!-- Client Section End -->

<?php include('footer.php'); ?>