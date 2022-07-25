<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<%
int categoria_id=Integer.parseInt(request.getParameter("categoria_id"));
int producto_id=Integer.parseInt(request.getParameter("producto_id"));
int siguiente=producto_id+1;
int anterior=producto_id-1;
%>
<!DOCTYPE html>
<html lang="en">
<head>

  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>camiusco product single</title>

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

<section class="single-product">

<div class="container">

<%-- aqui comienza el producto --%>

		<div class="row">
			<div class="col-md-6">
				<ol class="breadcrumb">
					<li><a href="index.jsp">Home</a></li>
					<li><a href="shop.jsp">Shop</a></li>
					<li class="active">Single Product</li>
				</ol>
			</div>
			<div class="col-md-6">
				<ol class="product-pagination text-right">
					<li><a href="product-single.jsp?categoria_id=<%=categoria_id%>&producto_id=<%=anterior%>"><i class="tf-ion-ios-arrow-left"></i> Next </a></li>
					<li><a href="product-single.jsp?categoria_id=<%=categoria_id%>&producto_id=<%=siguiente%>">Preview <i class="tf-ion-ios-arrow-right"></i></a></li>
				</ol>
			</div>
		</div>

	<div class="row" id="div_producto"></div>

</div>

</section>

<%-- Poner productos relacionados --%>


<jsp:include page="/portal/footer.jsp" />
    <!-- 
    Essential Scripts
    =====================================-->

	<jsp:include page="/portal/scripts.jsp" />
	<script src="../js/portal.js"></script>
	<script type="text/javascript">
		getProductDetallado(<%=categoria_id%>,<%=producto_id%>);
		
	</script>


  </body>
  </html>