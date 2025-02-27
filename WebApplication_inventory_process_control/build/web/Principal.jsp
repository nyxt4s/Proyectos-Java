<%-- 
    Document   : Principal
    Created on : 06-dic-2020, 19:13:42
    Author     : claud
--%>

<%@page import="MODEL.Venta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    if (session.getAttribute("username") == null) {
       response.sendRedirect("index.jsp");
    } 
%>
<!DOCTYPE html>
<html lang="es_CL">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description"
        content="Responsive sidebar template with sliding effect and dropdown menu based on bootstrap 3">
    <title>Principal</title>

    <!-- using online links -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
        integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
        integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link rel="stylesheet" href="//malihu.github.io/custom-scrollbar/jquery.mCustomScrollbar.min.css">
    

    <!-- using local links -->
    <!-- <link rel="stylesheet" href="../node_modules/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../node_modules/@fortawesome/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="../node_modules/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css"> -->

    <link rel="stylesheet" href="CSS/main.css">
    <link rel="stylesheet" href="CSS/sidebar-themes.css">
    <link rel="stylesheet" href="CSS/style.css">
    <link rel="shortcut icon" type="image/png" href=".//img/favicon.png" />


    <!-- Link DATATABLE-->
    <link rel="stylesheet" type="text/css" href="DataTables/datatables.css"/>
</head>

<body>

  
<!-- Navmenu -->
  <nav class="navbar navbar-expand-lg  navbar-dark  navbar-custom ">
    <a class="navbar-brand" href="#">Medina Celedonio System</a>
    
    <!-- HamburgerMenu-->
        <button class="navbar-toggler " type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    <!-- end HamburgerMenu-->

    <div class="collapse navbar-collapse " id="navbarSupportedContent">
      <ul class="navbar-nav ml-auto navbar-nav-custom">
        <li class="nav-item ">
            <!--<button type="button" class="btn btn-dark" onclick="cambiarModo()">Oscuro / Claro</button>-->
          
            <!-- dark mode2 -->
            <div class="DarkMode2-margin">
                <input type="checkbox" class="checkboxSlider"  onclick="cambiarModo()" id="chk" />
                <label class="labelSlider" for="chk">
                    <i class="fas fa-sun"></i>
                    <i class="fas fa-moon"></i>
                    <div class="ball"></div>
                </label>
            </div>
         


        </li>
        
      </ul>
    
      <!-- Button drop down Nombre de usuario  -->
      <div class="btn-group ">
        <button type="button" class="btn  dropdown-toggle btn-username-custom" data-toggle="dropdown" data-display="static" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-user-circle fa-2x"></i>
          
         <% 
              HttpSession misesion =request.getSession(true);
        
            String usuario =(String)misesion.getAttribute("username");
        out.print(usuario); 
         %>
        </button>
        <div class="dropdown-menu dropdown-menu-right dropdown-menu-lg-left">
            
      
            <a class="dropdown-item" href="/WebApplication_inventory_process_control/CerrarSesion">Cerrar Sesión</a>
      
      </div>
       <!-- END Button drop down Nombre de usuario  -->
    </div>
  </nav>
<!-- END Navmenu -->



<!-- end Navmenu -->

<!-- Navmenu 2-->

<nav class="navbar navbar-expand-lg  navbar-dark  navbar-custom2" id="navbar2">
    
    <div class="collapse navbar-collapse " id="navbarSupportedContent">

      <ul class="navbar-nav ml-auto navbar-nav-custom2">
          
        <li class="nav-item ">
            
        </li>
        <!-- Breadcrumb Navigation-->
        
       
        <!-- END Breadcrumb Navigation-->
      </ul>
    
    </div>
  </nav>
<!-- END Navmenu 2-->

    <!-- page-wrapper-->
    <div class="page-wrapper bg0 toggled legacy-theme">
      
        <nav id="sidebar" class="sidebar-wrapper">
          
         
          
            <div class="sidebar-content">
                
              <div class="sidebar-item sidebar-brand">
                
                
            </div>
               
                <div class=" sidebar-item sidebar-menu">
                    <ul>
                        <li class="header-menu">
                            <span></span>
                        </li>
                        <li >
                            <a href="Principal.jsp">
                                <i class="fa fa-tachometer-alt"></i>
                                <span class="menu-text">Principal</span>
                                
                            </a>
                            
                        </li>
                        
                        <li class="sidebar-dropdown">
                            <a href="#">
                                <i class="fa fa-shopping-cart"></i>
                                <span class="menu-text">Ventas</span>
                            </a>
                            <div class="sidebar-submenu">
                                <ul>
                                    <li>
                                        <a href="RealizarVenta.jsp">Realizar venta

                                        </a>
                                    </li>
                                    <li>
                                        <a href="HistorialVenta.jsp">Historial de ventas</a>
                                    </li>
                                   
                                </ul>
                            </div>
                        </li>
                        <li class="sidebar-dropdown">
                            <a href="#">
                                <i class="fas fa-dolly-flatbed"></i>
                                <span class="menu-text">Administración de inventario</span>
                            </a>
                            <div class="sidebar-submenu">
                                <ul>
                                    <li>
                                        <a href="Inventario.jsp">Lista de productos en inventario</a>
                                    </li>
                                    
                                    
                                   
                                </ul>
                            </div>
                        </li>
                        
                         <li >
                            <a href="Producto.jsp">
                                <i class="fas fa-dolly-flatbed"></i>
                                <span class="menu-text">Lista de productos</span>
                            </a>
                        </li>
                        
                       
                        <li class="sidebar-dropdown">
                            <a href="#">
                                <i class="fas fa-boxes"></i>
                                <span class="menu-text">Administración de marcas</span>
                            </a>
                            <div class="sidebar-submenu">
                                <ul>
                                    <li>
                                        <a href="Marca.jsp">Lista de marcas</a>
                                    </li>
                                  
                                   
                                </ul>
                            </div>
                        </li>
                        <li class="sidebar-dropdown">
                            <a href="#">
                                <i class="fas fa-boxes"></i>
                                <span class="menu-text">Administración de categorias</span>
                            </a>
                            <div class="sidebar-submenu">
                                <ul>
                                    <li>
                                        <a href="Categoria.jsp">Lista de categorias</a>
                                    </li>
                                   
                                </ul>
                            </div>
                        </li>
                      <li class="sidebar-dropdown">
                          <a href="#">
                            <i class="fas fa-users"></i>
                              <span class="menu-text">Administración de usuarios</span>
                          </a>
                          <div class="sidebar-submenu">
                              <ul>
                                  <li>
                                       <a href="AdministracionDeUsuarios.jsp" >Lista de usuarios</a>
                                  </li>
                                  <li>
                                      <a href="AdminstracionTipoUsuario.jsp">Tipo de usuario</a>
                                  </li>
                                  <li>
                                    <a href="ActividadDeUsuarios.jsp">Actividad de usuarios</a>
                                 </li>
                                <li>
                                    <a href="PermisosDeUsuarios.jsp">Permisos de usuarios</a>
                                </li>
                              </ul>
                          </div>
                      </li>
                      <li >
                            <a href="Proveedor.jsp">
                                <i class="fas fa-parachute-box"></i>
                                <span class="menu-text">Administración de Proveedores</span>
                            </a>
                         
                        </li>
                        <li>
                            <a href="AdminitradorDeSolicitud.jsp">
                                <i class="fa fa-calendar"></i>
                                <span class="menu-text">Solicitud de mercaderia</span>
                            </a>
                        </li>
                        <li>
                            <a href="Local.jsp">
                                <i class="fas fa-store-alt"></i>
                                <span class="menu-text">Administración de locales</span>
                            </a>
                        </li>
                       
                        
                        <li class="sidebar-dropdown">
                            <a href="#">
                                <i class="fas fa-exchange-alt"></i>
                                <span class="menu-text">Administracion de tipo de movimiento</span>
                            </a>
                            <div class="sidebar-submenu">
                                <ul>
                                    <li>
                                        <a href="ListaDeMovimientos.jsp">Lista de movimientos</a>
                                    </li>
                                    <li>
                                        <a href="RegistrarMovimiento.jsp">Registrar un movimiento
                                        </a>
                                    </li>
                                    <li>
                                        <a href="ListaDeTipoDeMovimientos.jsp">Lista de tipo de movimientos
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="sidebar-dropdown">
                            <a href="#">
                                <i class="far fa-chart-bar"></i>
                                <span class="menu-text">Reportes</span>
                            </a>
                            <div class="sidebar-submenu">
                                <ul>
                                    <li>
                                        <a href="ReportesDeVentas.jsp">Reporte de ventas</a>
                                    </li>
                                    <li>
                                        <a href="ReportesDeInventario.jsp">Reporte de inventario</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        
                    </ul>
                    <div  style="height: 30px;">
              
                     </div>
                </div>
                <!-- sidebar-menu  -->
                
            </div>
            
            <!-- sidebar-footer  -->
        </nav>


        <!-- page-content  -->
       
        <!--<div class="border-customTopHorizontal"></div>-->
        <main class="page-content pt-0">

            <div class="HamburgerMenuDiv">
                <button class="navbar-toggler second-button hamburgerButtonClass" onclick="reduceNavbar()" type="button" data-toggle="collapse" data-target="#navbarSupportedContent23" aria-controls="navbarSupportedContent23" aria-expanded="false" aria-label="Toggle navigation" id="toggle-sidebar">
                    <div class="animated-icon2 open"><span></span><span></span><span></span><span></span></div>
                </button>
            </div>
            
            <div class="container-xl "  style="margin-top: 150px; border: 0px solid black;Margin-left:50px;Margin-right:50px; top: 500px;">
                <div class="row justify-content-md-center " id="Container" style="">
                   
                </div>
               
                <div class="row justify-content-md-center" id="Container"style=" ">  
                    <div class="col-xl "  id="ContainerHeaderPanelBody" >
                        <div class="col-xl " id="ContainerContent " style="border: 0px solid rgb(204, 204, 204);height: 100%;">
                         
                          <!-- CONTENIDO -->
                          
                         <div class="row justify-content-md-center">
                             
                            
                              <div class="card text-white bg-primary mb-3 mr-5" style="width: 23rem;">
                                  <div class="card-header">
                                      <h6 class="card-title">Contador de ventas del día
                                      <%
                                          
                                      %>
                                      </h6>
                                  </div>
                                <div class="card-body">
                                <h3 class="card-title text-center">
                                <% 
                                    Venta v = new Venta();
                                     out.print(v.cantVentaTotal(1));
                                    
                                    
                                    %>
                                </h3>
                                </div>
                              </div>
                            
                             <div class="card text-white bg-success mb-3 mr-5" style="width: 23rem;">
                                 <div class="card-header">
                                     <h6 class="card-title">Realizar venta</h6>
                                 </div>
                                <div class="card-body">
                                    <h3 class="card-title text-center"><a class="btn btn-success" style="border: 1px solid green;" href="RealizarVenta.jsp">Ir a realizar ventas</a></h3>
                                  <p class="card-text"></p>
                                </div>
                            </div>
                             
                                
                            <!--<div class="col-sm-6">
                              <div class="card">
                                <div class="card-body">
                                  <h5 class="card-title">Special title treatment</h5>
                                  <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                  <a href="#" class="btn btn-primary">Go somewhere</a>
                                </div>
                              </div>
                            </div>-->
                             
                          </div>

                          <!-- END CONTENIDO -->
                            
                        </div>      
                    </div>
                </div> 
                
                

            </div>  
            
          
          <!-- DIV CONTAINER-XL -->
            <div class="container-xl ContainerCustom"  style="margin-top: 30px; border: 0px solid black;Margin-left:50px;Margin-right:50px; top: 500px;">
                <div class="row justify-content-md-center " id="Container"style="">
                    <div class="col-xl PanelHeader"  id="ContainerHeader" >
                
                        <h4>Grafico de ventas del mes de: Diciembre</h4>
                        <br>
                           
                     </div>  
                </div>
               
                <div class="row justify-content-md-center" id="Container"style=" ">  
                    <div class="col-xl PanelBody"  id="ContainerHeaderPanelBody" >
                        <div class="col-xl " id="ContainerContent " style="border: 1px solid rgb(204, 204, 204);height: 100%;">
                            
                            <br>
                        
                         
                          <!-- CONTENIDO -->
                          
                          <canvas id="myChart" height="100"></canvas>

                          <!-- END CONTENIDO -->
                            <br>
                        </div>      
                    </div>
                </div> 
                
                

            </div>    
          
             <!-- END DIV CONTAINER-XL -->
        </main>
        <!-- page-content" -->
        
        
    </div>
    
    
    <!-- END page-wrapper -->

    <!-- SCRIPT DATATABLE-->
    <script type="text/javascript" src="DataTables/datatables.js"></script>

    <!-- using online scripts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
        integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
        integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous">
    </script>
    <script src="//malihu.github.io/custom-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>

    
    <!-- Chart .JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js" integrity="sha512-hZf9Qhp3rlDJBvAKvmiG+goaaKRZA6LKUO35oK6EsM0/kjPK32Yw7URqrq3Q+Nvbbt8Usss+IekL7CRn83dYmw==" crossorigin="anonymous"></script>
    <!-- using local scripts -->
    <!-- <script src="../node_modules/jquery/dist/jquery.min.js"></script>
    <script src="../node_modules/popper.js/dist/umd/popper.min.js"></script>
    <script src="../node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="../node_modules/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script> -->


    <script src="JS/main.js"></script>
     <script src="JS/ChartCustom.js"></script>
</body>

</html>
