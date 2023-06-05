<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>CutaCuti</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500&family=Roboto:wght@500;700&display=swap"
        rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="{{asset('/aset/lib/animate/animate.min.css')}}" rel="stylesheet">
    <link href="{{asset('/aset/lib/owlcarousel/assets/owl.carousel.min.css')}}" rel="stylesheet">
    <link href="{{asset('/aset/lib/lightbox/css/lightbox.min.css')}}" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="{{asset('/aset/css/bootstrap.min.css')}}" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="{{asset('/aset/css/style.css')}}" rel="stylesheet">
</head>

<body>
    <!-- Spinner Start -->
    <div id="spinner"
        class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" role="status" style="width: 3rem; height: 3rem;"></div>
    </div>
    <!-- Spinner End -->


    <!-- Topbar Start -->
    <div class="container-fluid bg-primary text-white d-none d-lg-flex">
        <div class="container py-3">
            <div class="d-flex align-items-center">
                <a href="index.html">
                    <h2 class="text-white fw-bold m-0">DPRDDIY</h2>
                </a>
                <div class="ms-auto d-flex align-items-center">
                    <small class="ms-4"><i class="fa fa-map-marker-alt me-3"></i>Kec. Danurejan, Kota Yogyakarta, DIY</small>
                    <small class="ms-4"><i class="fa fa-envelope me-3"></i>dprd@jogjakota.go.id</small>
                    <small class="ms-4"><i class="fa fa-phone-alt me-3"></i>(0274) 540650</small>
                    <div class="ms-3 d-flex">
                        <a class="btn btn-sm-square btn-light text-primary rounded-circle ms-2" href="https://www.facebook.com/DPRDDIY/?locale=id_ID"><i
                                class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-sm-square btn-light text-primary rounded-circle ms-2" href="https://twitter.com/dprd_diy"><i
                                class="fab fa-twitter"></i></a>
                        <a class="btn btn-sm-square btn-light text-primary rounded-circle ms-2" href="https://id.linkedin.com/company/dprddiy?original_referer=https%3A%2F%2Fwww.google.com%2F"><i
                                class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <!-- Navbar End -->


    <!-- Carousel Start -->
    <div class="container-fluid px-0 mb-5">
        <div id="header-carousel" class="carousel slide carousel-fade" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="w-100" src="{{asset('/aset/img/carousel-1.jpg')}}" alt="Image">
                    <div class="carousel-caption">
                        <div class="container">
                            <div class="row justify-content-start">
                                <div class="col-lg-7 text-start">
                                    <p class="fs-4 text-white animated slideInRight">Cuti mudah dengan
                                        <strong>CutaCuti</strong>
                                    </p>
                                    <h1 class="display-1 text-white mb-4 animated slideInRight">Mengajukan Cuti secara online</h1>
                                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                        @if(Auth()->user()->role == 'pegawai')
                                        <li class="nav-item">
                                            <a href="/pegawai/dashboard"
                                            class="btn btn-primary rounded-pill py-3 px-5 animated slideInRight">Mulai</a>
                                        </li>
                                        @elseif(Auth()->user()->role == 'kadiv')
                                        <li class="nav-item">
                                            <a href="/kadiv/dashboard"
                                            class="btn btn-primary rounded-pill py-3 px-5 animated slideInRight">Mulai</a>
                                        </li>
                                        @elseif(Auth()->user()->role == 'pimpinan')
                                        <li class="nav-item">
                                            <a href="/pimpinan/dashboard"
                                            class="btn btn-primary rounded-pill py-3 px-5 animated slideInRight">Mulai</a>
                                        </li>
                                        @endif
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Carousel End -->
    <!-- JavaScript Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="{{asset('/aset/lib/wow/wow.min.js')}}"></script>
    <script src="{{asset('/aset/lib/easing/easing.min.js')}}"></script>
    <script src="{{asset('/aset/lib/waypoints/waypoints.min.js')}}"></script>
    <script src="{{asset('/aset/lib/owlcarousel/assets/owl.carousel.min.css')}}"></script>
    <script src="{{asset('/aset/lib/lightbox/css/lightbox.min.css')}}"></script>

    <!-- Template Javascript -->
    <script src="{{asset('/aset/js/main.js')}}"></script>
</body>

</html>
