<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>camiusco signin</title>

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

<section class="signin-page account">
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-md-offset-3">
        <div class="block text-center">
          <a class="logo" href="index.jsp">
            <img src="../images/logo.png" alt="">
          </a>
          <h2 class="text-center">Create Your Account</h2>
          <form class="text-left clearfix" action="index.jsp">
            <div class="form-group">
              <input type="text" class="form-control"  placeholder="First Name">
            </div>
            <div class="form-group">
              <input type="text" class="form-control"  placeholder="Last Name">
            </div>
            <div class="form-group">
              <input type="text" class="form-control"  placeholder="Username">
            </div>
            <div class="form-group">
              <input type="email" class="form-control"  placeholder="Email">
            </div>
            <div class="form-group">
              <input type="password" class="form-control"  placeholder="Password">
            </div>
            <div class="text-center">
              <button type="submit" class="btn btn-main text-center">Sign In</button>
            </div>
          </form>
          <p class="mt-20">Already hava an account ?<a href="login.jsp"> Login</a></p>
          <p><a href="forget-password.jsp"> Forgot your password?</a></p>
        </div>
      </div>
    </div>
  </div>
</section>

    <!-- 
    Essential Scripts
    =====================================-->
     
    <jsp:include page="/portal/scripts.jsp" />

  </body>
  </html>