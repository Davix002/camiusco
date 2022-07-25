<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
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
String producto_moda=messages.getString("producto_moda");
%>

<!DOCTYPE html>
<html lang="en">
<head>

<script type="text/javascript">
	function setLanguage(){
		var idioma = document.getElementById("idioma").value;
		window.location = "index.jsp?locale=" + idioma;
	}	
</script>


  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>CAMIUSCO</title>

  <!-- Mobile Specific Metas
  ================================================== -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="Construction Html5 Template">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
  <meta name="author" content="Themefisher">
  <meta name="generator" content="Themefisher Constra HTML Template v1.0">
  
<jsp:include page="/portal/css.jsp" />

</head>

<body id="body">
<!-- Start Top Header Bar -->
<jsp:include page="/portal/top-header-bar.jsp" />
<!-- End Top Header Bar -->

<!-- Main Menu Section -->
<jsp:include page="/portal/menu.jsp" />

<!-- Slider -->
<jsp:include page="/portal/slider.jsp" />

<!-- Products categories -->
<jsp:include page="/portal/categories.jsp" />


<!-- Trendy products -->
<section class="products section bg-gray">

	<div class="row">
		<div class="title text-center">
			<h2><%=producto_moda%></h2>
		</div>
	</div>
	<jsp:include page="/portal/products.jsp" />
</section>


<!--
Start Call To Action
==================================== -->
<jsp:include page="/portal/newsletter.jsp" />

<!-- footer -->
<jsp:include page="/portal/footer.jsp" />

    <!-- 
    Essential Scripts
    =====================================-->
    <jsp:include page="/portal/scripts.jsp" />
    
  <script src="../js/portal.js"></script>
	<script type="text/javascript">
		/* getCategories(1); */
		getProducts(1);
	</script>
  </body>
  </html>
