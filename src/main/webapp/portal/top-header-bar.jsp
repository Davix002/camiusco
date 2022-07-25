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
String carrito = messages.getString("carrito");
String ver_carrito=messages.getString("ver_carrito");
String verificar=messages.getString("verificar");
String categoria=messages.getString("categoria");
String buscar=messages.getString("buscar");
String total=messages.getString("total");
%>

<section class="top-header">
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-xs-12 col-sm-4">
				<div class="contact-number">
					<i class="tf-ion-ios-telephone"></i>
					<span>300 753 36 87</span>
				</div>
				<div class="contact-number">
					<i class="tf-ion-ios-telephone"></i>
					<span>310 298 97 33</span>
				</div>
								<div class="contact-number">
					<i class="tf-ion-ios-telephone"></i>
					<span>317 374 30 23</span>
				</div>
			</div>
			<div class="col-md-4 col-xs-12 col-sm-4">
				<!-- Site Logo -->
				<div class="logo text-center">
					<a href="../index.jsp">
						<!-- replace logo here -->
						<svg width="225px" height="29px" viewBox="0 0 155 29" version="1.1" xmlns="http://www.w3.org/2000/svg"
							xmlns:xlink="http://www.w3.org/1999/xlink">
							<g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" font-size="40"
								font-family="AustinBold, Austin" font-weight="bold">
								<g id="Group" transform="translate(-108.000000, -297.000000)" fill="#000000">
									<text id="AVIATO">
										<tspan x="75" y="325">CAMIUSCO</tspan>
									</text>
								</g>
							</g>
						</svg>
					</a>
				</div>
			</div>
			<div class="col-md-4 col-xs-12 col-sm-4">
				<!-- Cart -->
				<ul class="top-menu text-right list-inline">
					<li class="dropdown cart-nav dropdown-slide">
						<a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"><i
								class="tf-ion-android-cart"></i><%= carrito %></a>
						<div class="dropdown-menu cart-dropdown">
							<%-- <!-- Cart Item -->
							<div class="media">
								<a class="pull-left" href="#!">
									<img class="media-object" src="../images/shop/cart/cart-1.jpg" alt="image" />
								</a>
								<div class="media-body">
									<h4 class="media-heading"><a href="#!">Ladies Bag</a></h4>
									<div class="cart-price">
										<span>1 x</span>
										<span>1250.00</span>
									</div>
									<h5><strong>$1200</strong></h5>
								</div>
								<a href="#!" class="remove"><i class="tf-ion-close"></i></a>
							</div><!-- / Cart Item --> --%>
							<%-- <!-- Cart Item -->
							<div class="media">
								<a class="pull-left" href="#!">
									<img class="media-object" src="../images/shop/cart/cart-2.jpg" alt="image" />
								</a>
								<div class="media-body">
									<h4 class="media-heading"><a href="#!">Ladies Bag</a></h4>
									<div class="cart-price">
										<span>1 x</span>
										<span>1250.00</span>
									</div>
									<h5><strong>$1200</strong></h5>
								</div>
								<a href="#!" class="remove"><i class="tf-ion-close"></i></a>
							</div><!-- / Cart Item --> --%>

							<div class="cart-summary">
								<span><%=total%>></span>
								<span class="total-price">$0.00</span>
							</div>
							<ul class="text-center cart-buttons">
								<li><a href="cart.jsp" class="btn btn-small"><%=ver_carrito%></a></li>
								<li><a href="checkout.jsp" class="btn btn-small btn-solid-border"><%=verificar%>></a></li>
							</ul>
						</div>

					</li><!-- / Cart -->

					<li class="dropdown ">
						<a href="../category"><%=categoria%></a>
					</li>

					<!-- Search -->
					<li class="dropdown search dropdown-slide">
						<a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"><i
								class="tf-ion-ios-search-strong"></i><%=buscar%>></a>
						<ul class="dropdown-menu search-dropdown">
							<li>
								<form action="post"><input type="search" class="form-control" placeholder="<%=buscar%>"></form>
							</li>
						</ul>
					</li><!-- / Search -->

					<!-- Languages -->
					<li class="commonSelect">
						<select class="form-control" name="idioma" id="idioma" onchange="setLanguage()">
						    <option value="es_CO"><%=language%></option>
							<option value="es_CO">es</option>
							<option value="en_US">en</option>
							<option value="de_DE">de</option>
							<option value="fr_FR">fr</option>
						</select>
					</li><!-- / Languages -->

				</ul><!-- / .nav .navbar-nav .navbar-right -->
			</div>
		</div>
	</div>
</section>