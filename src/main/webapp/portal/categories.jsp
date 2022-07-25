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

String categoria=messages.getString("categoria");
String buzos=messages.getString("buzos");
String camisetas=messages.getString("camisetas");
String ropa_deportiva=messages.getString("ropa_deportiva");
String texto3=messages.getString("texto3");
String texto4=messages.getString("texto4");
String texto5=messages.getString("texto5");
%>


<section class="product-category section">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="title text-center">
					<h2><%=categoria%></h2>
				</div>
			</div>
			<div class="col-md-6">
				<div class="category-box">
					<a href="shop.jsp?id=1">
						<img src="../images/shop/category/category-1.jpg" alt="" />
						<div class="content">
							<h3 style="color:#C0C0C0;"><%=buzos%></h3>
							<p style="color:#A9A9A9;" ><%=texto3%></p>
						</div>
					</a>	
				</div>
				<div class="category-box">
					<a href="shop.jsp?id=2">
						<img src="../images/shop/category/category-2.jpg" alt="" />
						<div class="content">
							<h3><%=camisetas%></h3>
							<p><%=texto4%></p>
						</div>
					</a>	
				</div>
			</div>
			<div class="col-md-6">
				<div class="category-box category-box-2">
					<a href="shop.jsp?id=3">
						<img src="../images/shop/category/category-3.jpg" alt="" />
						<div class="content">
							<h3><%=ropa_deportiva%></h3>
							<p><%=texto5%></p>
						</div>
					</a>	
				</div>
			</div>
		</div>
	</div>
</section>