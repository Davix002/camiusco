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
String inicio=messages.getString("inicio");
String tienda=messages.getString("tienda");
String categoria=request.getParameter("categoria");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<script type="text/javascript">
	function setLanguage(){
		var idioma = document.getElementById("idioma").value;
		window.location = "shop.jsp?locale=" + idioma;
	}	
</script>

  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>camiusco shop</title>

  <!-- Mobile Specific Metas
  ================================================== -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="Construction Html5 Template">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
  <meta name="author" content="Themefisher">
  <meta name="generator" content="Themefisher Constra HTML Template v1.0">
  
  <jsp:include page="/portal/css.jsp" />
	<%-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"> --%>
</head>

<body id="body">

<!-- Start Top Header Bar -->
<jsp:include page="/portal/top-header-bar.jsp" />
<!-- End Top Header Bar -->

<!-- Main Menu Section -->
<jsp:include page="/portal/menu.jsp" />

<section class="page-header">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="content">
					<h1 class="page-name"><%=tienda%></h1>
					<ol class="breadcrumb">
						<li><a href="index.jsp"><%=inicio%></a></li>
						<li class="active"><%=tienda%></li>
					</ol>
				</div>
			</div>
		</div>
	</div>
</section>

<jsp:include page="/portal/products.jsp" />

<jsp:include page="/portal/footer.jsp" />

    <!-- 
    Essential Scripts
    =====================================-->
    
	<jsp:include page="/portal/scripts.jsp" />

	<%-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js">
	</script> --%>

	<script src="../js/portal.js"></script>
	<script type="text/javascript">
		/* getCategories(1); */

		if (<%=categoria%>)
			{getProducts(<%=categoria%>);}
		else{
			getProducts(1);
		}
		
	</script>

  </body>
  </html>
