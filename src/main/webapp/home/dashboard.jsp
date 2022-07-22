<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>Aviato | E-commerce template</title>

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
					<h1 class="page-name">Dashboard</h1>
					<ol class="breadcrumb">
						<li><a href="index.jsp">Home</a></li>
						<li class="active">my account</li>
					</ol>
				</div>
			</div>
		</div>
	</div>
</section>


<section class="user-dashboard page-wrapper">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<ul class="list-inline dashboard-menu text-center">
					<li><a class="active" href="dashboard.jsp">Dashboard</a></li>
					<li><a href="order.jsp">Orders</a></li>
					<li><a href="address.jsp">Address</a></li>
					<li><a href="profile-details.jsp">Profile Details</a></li>
				</ul>
				
				<div class="dashboard-wrapper user-dashboard">
					<div class="media">
						<div class="pull-left">
							<img class="media-object user-img" src="images/avater.jpg" alt="Image">
						</div>
						<div class="media-body">
							<h2 class="media-heading">Welcome Adam Smith</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde, iure, est. Sit mollitia est maxime! Eos
								cupiditate tempore, tempora omnis. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim, nihil. </p>
						</div>
					</div>
					<div class="total-order mt-20">
						<h4>Total Orders</h4>
						<div class="table-responsive">
							<table class="table">
								<thead>
									<tr>
										<th>Order ID</th>
										<th>Date</th>
										<th>Items</th>
										<th>Total Price</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><a href="#!">#252125</a></td>
										<td>Mar 25, 2016</td>
										<td>2</td>
										<td>$ 99.00</td>
									</tr>
									<tr>
										<td><a href="#!">#252125</a></td>
										<td>Mar 25, 2016</td>
										<td>2</td>
										<td>$ 99.00</td>
									</tr>
									<tr>
										<td><a href="#!">#252125</a></td>
										<td>Mar 25, 2016</td>
										<td>2</td>
										<td>$ 99.00</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
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