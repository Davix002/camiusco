<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>camiusco_about_us</title>

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

<section class="page-header">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="content">
					<h1 class="page-name">About Us</h1>
					<ol class="breadcrumb">
						<li><a href="index.jsp">Home</a></li>
						<li class="active">about us</li>
					</ol>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="about section">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<img class="img-responsive" src="../images/about/about.jpg">
			</div>
			<div class="col-md-6">
				<h2 class="mt-40">About Our Shop</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius enim, accusantium repellat ex autem numquam iure officiis facere vitae itaque.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam qui vel cupiditate exercitationem, ea fuga est velit nulla culpa modi quis iste tempora non, suscipit repellendus labore voluptatem dicta amet?</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam qui vel cupiditate exercitationem, ea fuga est velit nulla culpa modi quis iste tempora non, suscipit repellendus labore voluptatem dicta amet?</p>
				<a href="contact.jsp" class="btn btn-main mt-20">Download Company Profile</a>
			</div>
		</div>
		<div class="row mt-40">
			<div class="col-md-3 text-center">
				<img src="../images/about/awards-logo.png">
			</div>
			<div class="col-md-3 text-center">
				<img src="../images/about/awards-logo.png">
			</div>
			<div class="col-md-3 text-center">
				<img src="../images/about/awards-logo.png">
			</div>
			<div class="col-md-3 text-center">
				<img src="../images/about/awards-logo.png">
			</div>
		</div>
	</div>
</section>
<section class="team-members ">
	<div class="container">
		<div class="row">
			<div class="title"><h2>Team Members</h2></div>
		</div>
		<div class="row">
			<div class="col-md-3">
				<div class="team-member text-center">
					<img class="img-circle" src="../images/team/team-1.jpg">
					<h4>Jonathon Andrew</h4>
					<p>Founder</p>
				</div>
			</div>
			<div class="col-md-3">
				<div class="team-member text-center">
					<img class="img-circle" src="../images/team/team-2.jpg">
					<h4>Adipisci Velit</h4>
					<p>Developer</p>
				</div>
			</div>
			<div class="col-md-3">
				<div class="team-member text-center">
					<img class="img-circle" src="../images/team/team-3.jpg">
					<h4>John Fexit</h4>
					<p>Shop Manager</p>
				</div>
			</div>
			<div class="col-md-3">
				<div class="team-member text-center">
					<img class="img-circle" src="../images/team/team-1.jpg">
					<h4>John Fexit</h4>
					<p>Shop Manager</p>
				</div>
			</div>
		</div>
	</div>
</section>

<jsp:include page="/portal/footer.jsp" />

    <!-- 
    Essential Scripts
    =====================================-->

<jsp:include page="/portal/scripts.jsp" />
    


  </body>
  </html>