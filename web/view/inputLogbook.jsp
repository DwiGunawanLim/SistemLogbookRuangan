<%-- 
    Document   : inputLogbook
    Created on : Feb 11, 2021, 7:56:52 PM
    Author     : dwigunawan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
        <meta name="author" content="Creative Tim">
        <title>Form Logbook</title>
        <!-- Favicon -->
        <link rel="icon" href="assets/img/brand/favicon.png" type="image/png">
        <!-- Fonts -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
        <!-- Icons -->
        <link rel="stylesheet" href="assets/vendor/nucleo/css/nucleo.css" type="text/css">
        <link rel="stylesheet" href="assets/vendor/@fortawesome/fontawesome-free/css/all.min.css" type="text/css">
        <!-- Page plugins -->
        <!-- Argon CSS -->
        <link rel="stylesheet" href="assets/css/argon.css?v=1.2.0" type="text/css">
    </head>

    <body>
        <!-- Sidenav -->
        <nav class="sidenav navbar navbar-vertical  fixed-left  navbar-expand-xs navbar-light bg-white" id="sidenav-main">
            <div class="scrollbar-inner">
                <!-- Brand -->
                <div class="sidenav-header  align-items-center">
                    <a class="navbar-brand" href="javascript:void(0)">
                        <img src="assets/img/brand/logo.png" class="navbar-brand-img" alt="...">
                    </a>
                </div>
                <div class="navbar-inner">
                    <!-- Collapse -->
                    <div class="collapse navbar-collapse" id="sidenav-collapse-main">
                        <!-- Nav items -->
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link" href="dashboard.jsp">
                                    <i class="ni ni-tv-2 text-primary"></i>
                                    <span class="nav-link-text">Dashboard</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" href="#" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="ni ni-book-bookmark text-default"></i>
                                    <span class="nav-link-text">Logbook</span>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                    <a class="dropdown-item active" href="logbook.jsp">Logbook Ruang</a>
                                    <a class="dropdown-item" href="#">Logbook Aset</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="icons.html">
                                    <i class="ni ni-planet text-orange"></i>
                                    <span class="nav-link-text">Icons</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="map.html">
                                    <i class="ni ni-pin-3 text-primary"></i>
                                    <span class="nav-link-text">Google</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="profile.html">
                                    <i class="ni ni-single-02 text-yellow"></i>
                                    <span class="nav-link-text">Profile</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="tables.html">
                                    <i class="ni ni-bullet-list-67 text-default"></i>
                                    <span class="nav-link-text">Tables</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="login.html">
                                    <i class="ni ni-key-25 text-info"></i>
                                    <span class="nav-link-text">Login</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="register.html">
                                    <i class="ni ni-circle-08 text-pink"></i>
                                    <span class="nav-link-text">Register</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        <!-- Main content -->
        <div class="main-content" id="panel">
            <!-- Topnav -->
            <nav class="navbar navbar-top navbar-expand navbar-dark bg-primary border-bottom">
                <div class="container-fluid">
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <!-- Search form -->
                        <form class="navbar-search navbar-search-light form-inline mr-sm-3" id="navbar-search-main">
                            <div class="form-group mb-0">
                                <div class="input-group input-group-alternative input-group-merge">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-search"></i></span>
                                    </div>
                                    <input class="form-control" placeholder="Search" type="text">
                                </div>
                            </div>
                            <button type="button" class="close" data-action="search-close" data-target="#navbar-search-main" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </form>
                        <!-- Navbar links -->
                        <ul class="navbar-nav align-items-center  ml-md-auto ">
                            <li class="nav-item d-xl-none">
                                <!-- Sidenav toggler -->
                                <div class="pr-3 sidenav-toggler sidenav-toggler-dark" data-action="sidenav-pin" data-target="#sidenav-main">
                                    <div class="sidenav-toggler-inner">
                                        <i class="sidenav-toggler-line"></i>
                                        <i class="sidenav-toggler-line"></i>
                                        <i class="sidenav-toggler-line"></i>
                                    </div>
                                </div>
                            </li>
                            <li class="nav-item d-sm-none">
                                <a class="nav-link" href="#" data-action="search-show" data-target="#navbar-search-main">
                                    <i class="ni ni-zoom-split-in"></i>
                                </a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="ni ni-bell-55"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-xl  dropdown-menu-right  py-0 overflow-hidden">
                                    <!-- Dropdown header -->
                                    <div class="px-3 py-3">
                                        <h6 class="text-sm text-muted m-0">You have <strong class="text-primary">13</strong> notifications.</h6>
                                    </div>
                                    <!-- List group -->
                                    <div class="list-group list-group-flush">
                                        <a href="#!" class="list-group-item list-group-item-action">
                                            <div class="row align-items-center">
                                                <div class="col-auto">
                                                    <!-- Avatar -->
                                                    <img alt="Image placeholder" src="assets/img/theme/team-5.jpg" class="avatar rounded-circle">
                                                </div>
                                                <div class="col ml--2">
                                                    <div class="d-flex justify-content-between align-items-center">
                                                        <div>
                                                            <h4 class="mb-0 text-sm">John Snow</h4>
                                                        </div>
                                                        <div class="text-right text-muted">
                                                            <small>3 hrs ago</small>
                                                        </div>
                                                    </div>
                                                    <p class="text-sm mb-0">A new issue has been reported for Argon.</p>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <!-- View all -->
                                    <a href="#!" class="dropdown-item text-center text-primary font-weight-bold py-3">View all</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="ni ni-ungroup"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-lg dropdown-menu-dark bg-default  dropdown-menu-right ">
                                    <div class="row shortcuts px-4">
                                        <a href="#!" class="col-4 shortcut-item">
                                            <span class="shortcut-media avatar rounded-circle bg-gradient-red">
                                                <i class="ni ni-calendar-grid-58"></i>
                                            </span>
                                            <small>Calendar</small>
                                        </a>
                                        <a href="#!" class="col-4 shortcut-item">
                                            <span class="shortcut-media avatar rounded-circle bg-gradient-orange">
                                                <i class="ni ni-email-83"></i>
                                            </span>
                                            <small>Email</small>
                                        </a>
                                        <a href="#!" class="col-4 shortcut-item">
                                            <span class="shortcut-media avatar rounded-circle bg-gradient-info">
                                                <i class="ni ni-credit-card"></i>
                                            </span>
                                            <small>Payments</small>
                                        </a>
                                        <a href="#!" class="col-4 shortcut-item">
                                            <span class="shortcut-media avatar rounded-circle bg-gradient-green">
                                                <i class="ni ni-books"></i>
                                            </span>
                                            <small>Reports</small>
                                        </a>
                                        <a href="#!" class="col-4 shortcut-item">
                                            <span class="shortcut-media avatar rounded-circle bg-gradient-purple">
                                                <i class="ni ni-pin-3"></i>
                                            </span>
                                            <small>Maps</small>
                                        </a>
                                        <a href="#!" class="col-4 shortcut-item">
                                            <span class="shortcut-media avatar rounded-circle bg-gradient-yellow">
                                                <i class="ni ni-basket"></i>
                                            </span>
                                            <small>Shop</small>
                                        </a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                        <ul class="navbar-nav align-items-center  ml-auto ml-md-0 ">
                            <li class="nav-item dropdown">
                                <a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <div class="media align-items-center">
                                        <span class="avatar avatar-sm rounded-circle">
                                            <img alt="Image placeholder" src="assets/img/theme/team-4.jpg">
                                        </span>
                                        <div class="media-body  ml-2  d-none d-lg-block">
                                            <span class="mb-0 text-sm  font-weight-bold">Kelompok 4</span>
                                        </div>
                                    </div>
                                </a>
                                <div class="dropdown-menu  dropdown-menu-right ">
                                    <div class="dropdown-header noti-title">
                                        <h6 class="text-overflow m-0">Welcome!</h6>
                                    </div>
                                    <a href="#!" class="dropdown-item">
                                        <i class="ni ni-single-02"></i>
                                        <span>My profile</span>
                                    </a>
                                    <a href="#!" class="dropdown-item">
                                        <i class="ni ni-settings-gear-65"></i>
                                        <span>Settings</span>
                                    </a>
                                    <a href="#!" class="dropdown-item">
                                        <i class="ni ni-calendar-grid-58"></i>
                                        <span>Activity</span>
                                    </a>
                                    <a href="#!" class="dropdown-item">
                                        <i class="ni ni-support-16"></i>
                                        <span>Support</span>
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <a href="#!" class="dropdown-item">
                                        <i class="ni ni-user-run"></i>
                                        <span>Logout</span>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <div class="header bg-primary pb-6">
                <div class="container-fluid">
                    <div class="header-body">
                        <div class="row align-items-center py-4">
                            <div class="col-lg-6 col-7">
                                <h6 class="h2 text-white d-inline-block mb-0">Logbook Peminjaman Ruangan</h6>
                                <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
                                    <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                                        <li class="breadcrumb-item"><a href="#"><i class="fas fa-home"></i></a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Form Logbook</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page content -->
            <div class="container-fluid mt--6">
                <div class="row">
                    <div class="col">
                        <div class="card">
                            <!-- Card header -->
                            <div class="card-header border-0">
                                <h3 class="mb-0">Input Peminjaman Ruangan</h3>

                            </div>
                            <!-- Light table -->
                            <div class="table-responsive">
                                <form action="../save_servlet" method="post">
                                    <table class="table align-items-center table-flush">

                                        <tr>
                                            <td colspan="2">
                                                <label class="form-control-label" for="input-username">Kode Peminjaman</label>
                                                <%@page import = "java.sql.*, java.io.*" %>
                                                <%
                                                    String ids = "";
                                                    try {

                                                        String Host = "jdbc:mysql://localhost:3306/lab_db";
                                                        Connection connection = null;
                                                        Statement statement = null;
                                                        ResultSet rs = null;
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                        connection = DriverManager.getConnection(Host, "root", "");
                                                        statement = connection.createStatement();
                                                        String Data = "SELECT id_peminjaman_r FROM `peminjaman_r` ORDER BY id_peminjaman_r DESC LIMIT 1";
                                                        rs = statement.executeQuery(Data);
                                                        int idsum=0;
                                                        if (rs.first()) {
                                                            ids = rs.getString("id_peminjaman_r");
                                                        }
                                                        idsum = Integer.parseInt(ids.substring(6));
                                                        idsum ++;
                                                        ids = "pem_r_" + Integer.toString(idsum);
                                                    } catch (Exception e) {
                                                        e.printStackTrace();
                                                    }
                                                %>
                                                <input type="text" class="form-control" value="<%=ids%>" name="id_peminjaman_r" readonly >
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <label class="form-control-label" for="input-username">Peminjam</label>
                                                <%@page import = "java.sql.*, java.io.*" %>
                                                <%
                                                    try {
                                                        String Host = "jdbc:mysql://localhost:3306/lab_db";
                                                        Connection connection = null;
                                                        Statement statement = null;
                                                        ResultSet rs = null;
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                        connection = DriverManager.getConnection(Host, "root", "");
                                                        statement = connection.createStatement();
                                                        String Data = "SELECT * FROM user";
                                                        rs = statement.executeQuery(Data);
                                                %>
                                                <select name="id_user" class="form-control">
                                                    <option selected disabled>USER</option>
                                                    <%while (rs.next()) {%>
                                                    <option value="<%=rs.getString("id_user")%>"><%=rs.getString("nama_user")%></option>
                                                    <%}%>
                                                </select>
                                                <%
                                                        rs.close();
                                                        statement.close();
                                                        connection.close();
                                                    } catch (SQLException e) {
                                                        out.print("Can't connect to database, with error = " + e.getMessage());
                                                    }
                                                %>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <label class="form-control-label" for="input-username">Ruangan</label>
                                                <%@page import = "java.sql.*, java.io.*" %>
                                                <%
                                                    try {
                                                        String Host = "jdbc:mysql://localhost:3306/lab_db";
                                                        Connection connection = null;
                                                        Statement statement = null;
                                                        ResultSet rs = null;
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                        connection = DriverManager.getConnection(Host, "root", "");
                                                        statement = connection.createStatement();
                                                        String Data = "SELECT * FROM ruang";
                                                        rs = statement.executeQuery(Data);
                                                %>
                                                <select name="id_ruangan" class="form-control" >
                                                    <option selected disabled>RUANGAN</option>
                                                    <%while (rs.next()) {%>
                                                    <option value="<%=rs.getString("id_ruangan")%>"><%=rs.getString("id_ruangan")%> - <%=rs.getString("nama_ruangan")%></option>
                                                    <%}%>
                                                </select>
                                                <%
                                                        rs.close();
                                                        statement.close();
                                                        connection.close();
                                                    } catch (SQLException e) {
                                                        out.print("Can't connect to database, with error = " + e.getMessage());
                                                    }
                                                %>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="form-control-label" for="input-username">Tanggal Pinjam</label>
                                                <input class="form-control" type="datetime-local" name="cek_in"/>
                                            </td>
                                            <td>
                                                <label class="form-control-label" for="input-username">Batas Waktu Pinjam</label>
                                                <input class="form-control" type="datetime-local" name="cek_out"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <label class="form-control-label" for="input-username">Keperluan</label>
                                                <input class="form-control" type="text" name="keperluan"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><input type="submit" value="Simpan"/></td>
                                        </tr>
                                        </thead>

                                    </table>
                                </form>
                            </div>

                            <!-- Card footer -->
                        </div>
                    </div>
                </div>
                <!-- Footer -->
                <footer class="footer pt-0">
                    <div class="row align-items-center justify-content-lg-between">
                        <div class="col-lg-6">
                            <div class="copyright text-center  text-lg-left  text-muted">
                                &copy; 2020 <a href="https://www.creative-tim.com" class="font-weight-bold ml-1" target="_blank">Creative Tim</a>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <ul class="nav nav-footer justify-content-center justify-content-lg-end">
                                <li class="nav-item">
                                    <a href="https://www.creative-tim.com" class="nav-link" target="_blank">Creative Tim</a>
                                </li>
                                <li class="nav-item">
                                    <a href="https://www.creative-tim.com/presentation" class="nav-link" target="_blank">About Us</a>
                                </li>
                                <li class="nav-item">
                                    <a href="http://blog.creative-tim.com" class="nav-link" target="_blank">Blog</a>
                                </li>
                                <li class="nav-item">
                                    <a href="https://github.com/creativetimofficial/argon-dashboard/blob/master/LICENSE.md" class="nav-link" target="_blank">MIT License</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <!-- Argon Scripts -->
        <!-- Core -->
        <script src="assets/vendor/jquery/dist/jquery.min.js"></script>
        <script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/js-cookie/js.cookie.js"></script>
        <script src="assets/vendor/jquery.scrollbar/jquery.scrollbar.min.js"></script>
        <script src="assets/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js"></script>
        <!-- Optional JS -->
        <script src="assets/vendor/chart.js/dist/Chart.min.js"></script>
        <script src="assets/vendor/chart.js/dist/Chart.extension.js"></script>
        <!-- Argon JS -->
        <script src="assets/js/argon.js?v=1.2.0"></script>
    </body>

</html>
