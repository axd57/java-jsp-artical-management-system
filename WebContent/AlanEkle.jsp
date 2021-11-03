<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	
    
    <title>Editör Paneli</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="assets/materialize/css/materialize.min.css" media="screen,projection" />
    <!-- Bootstrap Styles-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="assets/js/Lightweight-Chart/cssCharts.css">


</head>
<body>
<%if(session.getAttribute("AEId")==null){
    response.sendRedirect("index.jsp"); 
}%>
	<div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle waves-effect waves-dark" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                 <a class="navbar-brand waves-effect waves-dark" href="EAnasayfa.jsp?durum=Beklemede"><strong>Editör Paneli</strong></a>

                <div id="sideNav" href=""><i class="material-icons dp48">toc</i></div>
            </div>

            <ul class="nav navbar-top-links navbar-right">
                <li><a class="dropdown-button waves-effect waves-dark" href="#!" data-activates="dropdown1"><i class="fa fa-user fa-fw"></i> <b>Hoş geldiniz, <%=session.getAttribute("AEAd")%></b> <i class="material-icons right">arrow_drop_down</i></a></li>
            </ul>
        </nav>
        <!-- Dropdown Structure -->
        <ul id="dropdown1" class="dropdown-content">
           <li>
                <a href="SifreDegistir.jsp?id=<%=String.valueOf(session.getAttribute("AEId"))%>&alan=editorler"><i class="fa fa-cogs fa-fw"></i> Şifre Güncelle</a>
           </li>
           <li>
                <a href="VeriTabaniSorgu.jsp?islem=cikis&alan=editorler"><i class="fa fa-sign-out fa-fw"></i> Çıkış yap</a>
            </li>
        </ul>
       
        <!--/. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
					<li>
                        <a href="EAnasayfa.jsp?durum=Beklemede" class="waves-effect waves-dark"><i class="fa fa-user"></i> Beklemedekiler</a>
                    </li>

                    <li>
                        <a href="EAnasayfa.jsp?durum=Aktif" class="waves-effect waves-dark"><i class="fa fa-bars"></i> Aktifler</a>
                    </li>
                    <li>
                        <a href="EAnasayfa.jsp?durum=Raporlu" class="waves-effect waves-dark"><i class="fa fa-check-circle"></i>Raporlular</a>
                    </li>
                </ul>
            </div>
        </nav>
        <!-- /. NAV SIDE  ALANLARIN İÇERİKLERİ BÖLÜMÜ LAYOUT-->
       
<div id="page-wrapper">
    <div class="header">
        <h1 class="page-header">
            Makale Alanı Ekle
        </h1>
    </div>
    <div id="page-inner">
        <div class="row">
            <div class="col-md-12">
                <!-- Advanced Tables -->
                <div class="card">
                   <div class="card-content">
                     	<form action="VeriTabaniSorgu.jsp">
                            <input type="hidden" name="islem" value="AlanEkleGuncelle"> <!-- Hepsinde aynı -->
							<input type="hidden" name="guncelle" value="yok">
                            
                            <div class="form-group">
                                <label for="exampleInputEmail1">Alan Adı</label>
                                <input type="text" class="form-control"  name="a_ad" required="required">
                            </div>
                            
                            <button type="submit" class="btn btn-success">Ekle</button>
                        </form>
                  </div>
                </div>
                <!--End Advanced Tables -->
            </div>
        </div>

     



        <footer>
            <p>Makale Sistemi</p>
        </footer>
    </div>

</div>



      
        
              
          

























                






        <!-- /. PAGE WRAPPER  -->
    </div>
    <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
    <script src="assets/js/jquery-1.10.2.js"></script>

    <!-- Bootstrap Js -->
    <script src="assets/js/bootstrap.min.js"></script>

    <script src="assets/materialize/js/materialize.min.js"></script>

    <!-- Metis Menu Js -->
    <script src="assets/js/jquery.metisMenu.js"></script>
    <!-- Morris Chart Js -->
    <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="assets/js/morris/morris.js"></script>


    <script src="assets/js/easypiechart.js"></script>
    <script src="assets/js/easypiechart-data.js"></script>

    <script src="assets/js/Lightweight-Chart/jquery.chart.js"></script>

    <!-- Custom Js -->
    <script src="assets/js/custom-scripts.js"></script>
</body>
</html>