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
String verificar=messages.getString("verificar");
String inicio=messages.getString("inicio");
String datos_envio= messages.getString("datos_envio");
String nombre=messages.getString("nombre");
String dirrecion=messages.getString("dirrecion");
String cod_postal=messages.getString("cod_postal");
String ciudad=messages.getString("ciudad");
String pais=messages.getString("pais");
String metodos_pago=messages.getString("metodos_pago");
String detalles_tarjeta=messages.getString("detalles_tarjeta");
String num_tarjeta=messages.getString("num_tarjeta");
String expira=messages.getString("expira");
String codigo=messages.getString("codigo");
String confirmar=messages.getString("confirmar");
String resumen_orden=messages.getString("resumen_orden");
%>



<!DOCTYPE html>
<html lang="en">
<head>
<script type="text/javascript">
	function setLanguage(){
		var idioma = document.getElementById("idioma").value;
		window.location = "checkout.jsp?locale=" + idioma;
	}	
</script>

  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>camiusco_checkout</title>

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
					<h1 class="page-name"><%=verificar%></h1>
					<ol class="breadcrumb">
						<li><a href="index.jsp"><%=inicio%></a></li>
						<li class="active"><%=verificar%></li>
					</ol>
				</div>
			</div>
		</div>
	</div>
</section>

<div class="page-wrapper">
   <div class="checkout shopping">
      <div class="container">
         <div class="row">
            <div class="col-md-8">
               <div class="block billing-details">
                  <h4 class="widget-title"><%=datos_envio%></h4>
                  <form class="checkout-form">
                     <div class="form-group">
                        <label for="full_name"><%=nombre%></label>
                        <input type="text" class="form-control" id="full_name" placeholder="">
                     </div>
                     <div class="form-group">
                        <label for="user_address"><%=dirrecion%></label>
                        <input type="text" class="form-control" id="user_address" placeholder="">
                     </div>
                     <div class="checkout-country-code clearfix">
                        <div class="form-group">
                           <label for="user_post_code"><%=cod_postal%></label>
                           <input type="text" class="form-control" id="user_post_code" name="zipcode" value="">
                        </div>
                        <div class="form-group" >
                           <label for="user_city"><%=ciudad%></label>
                           <input type="text" class="form-control" id="user_city" name="city" value="">
                        </div>
                     </div>
                     <div class="form-group">
                        <label for="user_country"><%=pais%></label>
                        <input type="text" class="form-control" id="user_country" placeholder="">
                     </div>
                  </form>
               </div>
               <div class="block">
                  <h4 class="widget-title"><%=metodos_pago%></h4>
                  <p><%=detalles_tarjeta%></p>
                  <div class="checkout-product-details">
                     <div class="payment">
                        <div class="card-details">
                           <form  class="checkout-form">
                              <div class="form-group">
                                 <label for="card-number"><%=num_tarjeta%><span class="required">*</span></label>
                                 <input  id="card-number" class="form-control"   type="tel" placeholder="•••• •••• •••• ••••">
                              </div>
                              <div class="form-group half-width padding-right">
                                 <label for="card-expiry"><%=expira%><span class="required">*</span></label>
                                 <input id="card-expiry" class="form-control" type="tel" placeholder="MM / YY">
                              </div>
                              <div class="form-group half-width padding-left">
                                 <label for="card-cvc"><%=codigo%><span class="required">*</span></label>
                                 <input id="card-cvc" class="form-control"  type="tel" maxlength="4" placeholder="CVC" >
                              </div>
                              <a href="confirmation.jsp" class="btn btn-main mt-20"><%=confirmar%></a >
                           </form>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-md-4">
               <div class="product-checkout-details">
                  <div class="block">
                     <h4 class="widget-title"><%=resumen_orden%></h4>
                     <%-- <div class="media product-card">
                        <a class="pull-left" href="product-single.jsp">
                           <img class="media-object" src="../images/shop/cart/cart-1.jpg" alt="Image" />
                        </a>
                        <div class="media-body">
                           <h4 class="media-heading"><a href="product-single.jsp">Ambassador Heritage 1921</a></h4>
                           <p class="price">1 x $249</p>
                           <span class="remove" >Remove</span>
                        </div>
                     </div>
                     <div class="discount-code">
                        <p>Have a discount ? <a data-toggle="modal" data-target="#coupon-modal" href="#!">enter it here</a></p>
                     </div>
                     <ul class="summary-prices">
                        <li>
                           <span>Subtotal:</span>
                           <span class="price">$190</span>
                        </li>
                        <li>
                           <span>Shipping:</span>
                           <span>Free</span>
                        </li>
                     </ul>
                     <div class="summary-total">
                        <span>Total</span>
                        <span>$250</span>
                     </div> --%>
                     <div class="verified-icon">
                        <img src="../images/shop/verified.png">
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
   <!-- Modal -->
   <div class="modal fade" id="coupon-modal" tabindex="-1" role="dialog">
      <div class="modal-dialog" role="document">
         <div class="modal-content">
            <div class="modal-body">
               <form>
                  <div class="form-group">
                     <input class="form-control" type="text" placeholder="Enter Coupon Code">
                  </div>
                  <button type="submit" class="btn btn-main">Apply Coupon</button>
               </form>
            </div>
         </div>
      </div>
   </div>
   
<jsp:include page="/portal/footer.jsp" />

    <!-- 
    Essential Scripts
    =====================================-->
    
<jsp:include page="/portal/scripts.jsp" />    


  </body>
  </html>