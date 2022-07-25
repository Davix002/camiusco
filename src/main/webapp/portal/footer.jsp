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
String contacto=messages.getString("contacto");
String sobre_nosotros=messages.getString("sobre_nosotros");


%>


<footer class="footer section text-center">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<ul class="social-media">
					<li>
						<a href="#">
							<i class="tf-ion-social-facebook"></i>
						</a>
					</li>
					<li>
						<a href="#">
							<i class="tf-ion-social-instagram"></i>
						</a>
					</li>
					<li>
						<a href="#">
							<i class="tf-ion-social-twitter"></i>
						</a>
					</li>
					<li>
						<a href="#">
							<i class="tf-ion-social-pinterest"></i>
						</a>
					</li>
				</ul>
				<ul class="footer-menu text-uppercase">
					<li>
						<a href="contact.jsp"><%=contacto%>></a>
					</li>
					<li>
						<a href="about.jsp"><%=sobre_nosotros%></a>
					</li>
					<li>
						<a href="faq.jsp">FAQ</a>
					</li>
					<li>
						<a href="shop.jsp">SHOP</a>
					</li>
				</ul>
				<p class="copyright-text">Copyright &copy;2022, Designed &amp; Developed by Los Tres Mosqueteros</p>
			</div>
		</div>
	</div>
</footer>