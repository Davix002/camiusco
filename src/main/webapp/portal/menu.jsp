<%@ page import="java.util.*"%>
<%
String locale = request.getParameter("locale");
Locale currentLocale = request.getLocale();
String language = "es";
String country = "CO";
if (locale != null) {
	language = locale.substring(0, 2);
	country = locale.substring(3, 5);
	currentLocale = new Locale(language, country);
}
ResourceBundle messages;
messages = ResourceBundle.getBundle("MesageBundle", currentLocale);
String inicio=messages.getString("inicio");
String tienda=messages.getString("tienda");
String buzos=messages.getString("buzos");
String camisetas=messages.getString("camisetas");
String ropa_deportiva=messages.getString("ropa_deportiva");
String carrito=messages.getString("carrito");
String categoria=messages.getString("categoria");
String verificar=messages.getString("verificar");
%>

<section class="menu">
	<nav class="navbar navigation">
		<div class="container">
			<div class="navbar-header">
				<h2 class="menu-title">Main Menu</h2>
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
					aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>

			</div><!-- / .navbar-header -->

			<!-- Navbar Links -->
			<div id="navbar" class="navbar-collapse collapse text-center">
				<ul class="nav navbar-nav">

					<!-- Home -->
					<li class="dropdown ">
						<a href="../index.jsp"><%=inicio%></a>
					</li><!-- / Home -->


					<!-- Shop -->
					<li class="dropdown dropdown-slide">
						<a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="350"
							role="button" aria-haspopup="true" aria-expanded="false"><%=tienda%><span
								class="tf-ion-ios-arrow-down"></span></a>
						<div class="dropdown-menu">
							<div class="row">

								<!-- Basic -->
								<div class="col-lg-12 col-md-12 mb-sm-auto">
									<ul>
										<%-- <li class="dropdown-header">Pages</li>
										<li role="separator" class="divider"></li> --%>
										<li><a href="../home/shop.jsp"><%=tienda%></a></li>
										<li><a href="../home/checkout.jsp"><%=verificar%></a></li>
										<li><a href="../home/cart.jsp"><%=carrito%></a></li>

									</ul>
								</div>

							</div><!-- / .row -->
						</div><!-- / .dropdown-menu -->
					</li><!-- / Shop -->

					<!-- Categorias -->
					<li class="dropdown dropdown-slide">
						<a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="350"
							role="button" aria-haspopup="true" aria-expanded="false"><%=categoria%><span
								class="tf-ion-ios-arrow-down"></span></a>
						<div class="dropdown-menu">
							<div class="row">

								<!-- Basic -->
								<div class="col-lg-12 col-md-12 mb-sm-auto">
									<ul>
										<li><a href="../home/shop.jsp?categoria=1"><%=buzos%></a></li>
										<li><a href="../home/shop.jsp?categoria=2"><%=camisetas%></a></li>
										<li><a href="../home/shop.jsp?categoria=3"><%=ropa_deportiva%></a></li>

									</ul>
								</div>

							</div><!-- / .row -->
						</div><!-- / .dropdown-menu -->
					</li><!-- / Categorias -->

				</ul><!-- / .nav .navbar-nav -->

			</div>
			<!--/.navbar-collapse -->
		</div><!-- / .container -->
	</nav>
</section>