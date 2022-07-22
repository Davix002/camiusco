<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

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
			<h2>Trendy Products</h2>
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
    

  </body>
  </html>
