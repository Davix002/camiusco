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
String producto=messages.getString("producto");
String texto1=messages.getString("texto1");
String texto2=messages.getString("texto2");
String compra_ahora=messages.getString("compra_ahora");

%>

<div class="hero-slider">
  <div class="slider-item th-fullpage hero-area" style="background-image: url(/images/slider/slider1.jpg);">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 text-center">
          <p data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".1"><%=producto%></p>
          <h1 data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".5"><%=texto1%><br><%=texto2%></h1>
          <a data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".8" class="btn" href="shop.jsp"><%=compra_ahora%></a>
        </div>
      </div>
    </div>
  </div>
  <div class="slider-item th-fullpage hero-area" style="background-image: url(/images/slider/slider3.jpg);">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 text-left">
          <p data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".1"><%=producto%></p>
          <h1 data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".5"><%=texto1%><br><%=texto2%></h1>
          <a data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".8" class="btn" href="shop.jsp"><%=compra_ahora%></a>
        </div>
      </div>
    </div>
  </div>
  <div class="slider-item th-fullpage hero-area" style="background-image: url(/images/slider/slider2.jpg);">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 text-right">
          <p data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".1"><%=producto%></p>
          <h1 data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".5"><%=texto1%><br><%=texto2%></h1>
          <a data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".8" class="btn" href="shop.jsp"><%=compra_ahora%></a>
        </div>
      </div>
    </div>
  </div>
</div>