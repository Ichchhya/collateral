<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <title>EPF</title>

    <asset:link rel="icon" href="logo.png " type="image/x-ico" />

    %{--<asset:stylesheet src="application.css"/>--}%
    <asset:stylesheet src="formdesign.css"/>

    <link rel="stylesheet" href="/assets/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="/assets/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">


    <asset:stylesheet src="plugins/fontawesome-free/css/all.min.css"/>
    <asset:stylesheet src="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css"/>
    <asset:stylesheet src="plugins/icheck-bootstrap/icheck-bootstrap.min.css"/>
    <asset:stylesheet src="plugins/jqvmap/jqvmap.min.css"/>
    <asset:stylesheet src="dist/css/adminlte.min.css"/>
    <asset:stylesheet src="plugins/overlayScrollbars/css/OverlayScrollbars.min.css"/>
    <asset:stylesheet src="plugins/daterangepicker/daterangepicker.css"/>
    <asset:stylesheet src="plugins/summernote/summernote-bs4.css"/>
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">


</head>
<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
<div class="wrapper">
    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
        <!-- Left navbar links -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
            </li>
            <li class="nav-item dropdown">
                <a href="#" class="nav-link" data-toggle="dropdown">Home</a>
            </li>

            <div class="nav-item dropdown">
                <a class="nav-link" data-toggle="dropdown" href="#">
                    <h6><i class="fas fa-cogs"></i> Setup</h6>
                </a>
                <div class="dropdown-menu dropdown-menu-lg dropdown-menu-left drop">
                    <div class="dropdown-item">
                        <g:link action="index" controller="loansetup" class=" text-secondary">
                            <h6><i class="fas fa-money-check-alt"></i> Loan Setup</h6>
                        </g:link>
                    </div>
                    <div class="dropdown-divider"></div>
                    <div class="dropdown-item ">
                        <g:link action="index" controller="projectcategory" class=" text-secondary">
                            <h6><i class="fas fa-project-diagram"></i> Project Category</h6>
                        </g:link>
                    </div>
                </div>
            </div>
        </ul>

        <!-- SEARCH FORM -->
        <form class="form-inline ml-3">
            <div class="input-group input-group-sm">
                <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
                <div class="input-group-append">
                    <button class="btn btn-navbar" type="submit">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
            </div>
        </form>

    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
        <!-- Brand Logo -->
        <a href="index3.html" class="brand-link">
            <img src="/assets/img/logo/epflogo3.png" alt="AdminLTE Logo" class="brand-image elevation-3"
                 style="opacity: .8">
            <!-- <span class="brand-text font-weight-light">EPF</span> -->
        </a>

        <!-- Sidebar -->
        <div class="sidebar">
            <!-- Sidebar user panel (optional) -->
            <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                <div class="image">
                    <img src="/assets/dist/img/avatar3.png" class="img-circle elevation-2" alt="User Image">
                </div>
                <div class="info">
                    <a href="#" class="d-block">Samikshya Dhakal</a>
                </div>
            </div>

            <!-- Sidebar Menu -->
            <nav class="mt-2">
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                    <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                    <li class="nav-item has-treeview menu-open">
                        <a href="#" class="nav-link active">
                            <i class="nav-icon fas fa-tachometer-alt"></i>
                            <p>
                                Dashboard

                            </p>
                        </a>
                    </li>

                    <li class="nav-item">
                        <g:link action="index" controller="collateral" class= "nav-link">
                            <i class="fas fa-table nav-icon"></i>
                            <p>Collateral Profile</p>
                            </g:link>
                        %{--<a href="./collateral/index" class="nav-link">--}%

                        %{--</a>--}%
                    </li>

                    <li class="nav-item " >
                        <g:link action="index" controller="project" class="nav-link">
                            <i class="fas fa-table nav-icon"></i>
                            <p>Project Profile</p>
                            </g:link>
                        %{--<a href="./projectprofile.html" class="nav-link p" onclick="acFunction()" >--}%
                            %{--<i class="fas fa-table nav-icon"></i>--}%
                            %{--<p>Project Profile</p>--}%
                        %{--</a>--}%
                    </li>
                    %{--<li class="nav-item ">--}%
                        %{--<g:link action="index" controller="project" class="nav-link">--}%
                        %{--<a href="./projectprofile.html" class="nav-link active pp" >--}%
                            %{--<i class="fas fa-table nav-icon"></i>--}%
                            %{--<p>Project Profile</p>--}%

                        %{--</g:link>--}%
                        %{--</a>--}%
                    %{--</li>--}%

                    <li class="nav-item">
                        <g:link action="index" controller="company" class= "nav-link"  >
                        %{--<a href="./companyprofile.html" class="nav-link">--}%
                            <i class="fas fa-table nav-icon"></i>
                            <p>Company Profile</p>

                        %{--</a>--}%
                        </g:link>
                    </li>

                    <li class="nav-item">
                        <g:link action="index" controller="loan" class= "nav-link"  >
                        %{--<a href="./companyprofile.html" class="nav-link">--}%
                            <i class="fas fa-table nav-icon"></i>
                            <p>Loan Profile</p>
                        </g:link>
                    </li>



            </nav>
            <!-- /.sidebar-menu -->
        </div>
        <!-- /.sidebar -->
    </aside>

    <g:layoutBody/>

    %{--<div class="footer" role="contentinfo"></div>--}%

    %{--<div id="spinner" class="spinner" style="display:none;">--}%
        %{--<g:message code="spinner.alt" default="Loading&hellip;"/>--}%
    %{--</div>--}%

    <asset:javascript src="application.js"/>




</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->
<!-- jQuery -->
<script src="/assets/plugins/jquery/jquery.min.js"></script>
%{--<!-- Bootstrap -->--}%
<script src="/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
%{--<!-- overlayScrollbars -->--}%
<script src="/assets/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
%{--<!-- AdminLTE App -->--}%
<script src="/assets/dist/js/adminlte.js"></script>

%{--<!-- OPTIONAL SCRIPTS -->--}%
<script src="/assets/dist/js/demo.js"></script>

%{--<!-- PAGE PLUGINS -->--}%
%{--<!-- jQuery Mapael -->--}%
<script src="/assets/plugins/jquery-mousewheel/jquery.mousewheel.js"></script>
<script src="/assets/plugins/raphael/raphael.min.js"></script>
<script src="/assets/plugins/jquery-mapael/jquery.mapael.min.js"></script>
<script src="/assets/plugins/jquery-mapael/maps/usa_states.min.js"></script>

%{--<!-- PAGE SCRIPTS -->--}%
<script src="/assetsdist/js/pages/dashboard2.js"></script>

<!-- DataTables -->
<script src="/assets/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/assets/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="/assets/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="/assets/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>

%{--<script>--}%
    %{--function acFunction(){--}%

        %{--$(".pp").show();--}%
        %{--$(".p").hide();--}%


    %{--}--}%
%{--</script>--}%

<script>
    $(function () {
        $("#example1").DataTable({
            "responsive": true,
            "autoWidth": false
        });
        $('#example2').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": false,
            "ordering": true,
            "info": true,
            "autoWidth": false,
            "responsive": true
        });
    });
</script>


</body>
</html>
