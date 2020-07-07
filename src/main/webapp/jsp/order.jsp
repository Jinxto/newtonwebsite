<%@page import="javaWebApplication.utility.ServletUtility"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UserRegistration</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
<body oncontextmenu="return false;">
<script>
document.onkeydown = function(e) {
  if(event.keyCode == 123) {
     return false;
  }
  if(e.ctrlKey && e.shiftKey && e.keyCode == 'I'.charCodeAt(0)) {
     return false;
  }
  if(e.ctrlKey && e.shiftKey && e.keyCode == 'C'.charCodeAt(0)) {
     return false;
  }
  if(e.ctrlKey && e.shiftKey && e.keyCode == 'J'.charCodeAt(0)) {
     return false;
  }
  if(e.ctrlKey && e.keyCode == 'U'.charCodeAt(0)) {
     return false;
  }
  if(e.ctrlKey && e.shiftKey && e.keyCode == 'e'.charCodeAt(0)) {
	     return false;
	  }
}
</script>

<%@ include file="header.jsp"%>
  <main class="login-form">
  <div class="cotainer">
  <h1 class="my-4">Welcome to the "Order" !
    <small>(Food menu result in changes every week!)</small>
  </h1>
    <div class="row justify-content-center">
      <div class="col-md-8">
        <div class="card">
          <div class="card-header">
           <div class="row">
    <div class="col-lg-4 col-sm-6 mb-4">
      <div class="card h-100">
        <a href="#"><img class="card-img-top" src="https://i.barkpost.com/wp-content/uploads/2015/10/reddit-dog-jokes-16.jpg?q=70&fit=crop&crop=entropy&w=808&h=808" alt="laughdog"></a>
        <div class="card-body">
          <h4 class="card-title">
            <a href="#">Sunday</a>
            </h4>
          <p class="card-text">Till next week</p>
        </div>
      </div>
    </div>
    <div class="col-lg-4 col-sm-6 mb-4">
      <div class="card h-100">
        <a href="#"><img class="card-img-top" src="https://i.imgflip.com/1jtnk7.jpg" alt="retriever"></a>
        <div class="card-body">
          <h4 class="card-title">
            <a href="#">Monday</a>
          </h4>
          <p class="card-text">Till next week</p>
        </div>
      </div>
    </div>
    <div class="col-lg-4 col-sm-6 mb-4">
      <div class="card h-100">
        <a href="#"><img class="card-img-top" src="https://66.media.tumblr.com/30243eb75aa86ee15c7f7f40923b148e/tumblr_pak3z2ET3g1r9qwkso1_500.jpg" alt="cat"></a>
        <div class="card-body">
          <h4 class="card-title">
            <a href="#">Tuesday</a>
          </h4>
          <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos quisquam, error quod sed cumque, odio distinctio velit nostrum temporibus necessitatibus et facere atque iure perspiciatis mollitia recusandae vero vel quam!</p>
        </div>
      </div>
    </div>
    <div class="col-lg-4 col-sm-6 mb-4">
      <div class="card h-100">
        <a href="#"><img class="card-img-top" src="https://i.pinimg.com/600x315/a1/24/19/a1241985c15edffc1dc0b43a6252cea5.jpg" alt="hmm"></a>
        <div class="card-body">
          <h4 class="card-title">
            <a href="#">Wednesday</a>
          </h4>
          <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
        </div>
      </div>
    </div>
     <div class="col-lg-4 col-sm-6 mb-4">
      <div class="card h-100">
        <a href="#"><img class="card-img-top" src="https://assets.change.org/photos/3/yi/to/cTyItoocJlulYjJ-800x450-noPad.jpg?1519143478" alt="yuh"></a>
        <div class="card-body">
          <h4 class="card-title">
            <a href="#">Thursday</a>
          </h4>
          <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
        </div>
      </div>
    </div>
  
          <div class="col-lg-4 col-sm-6 mb-4">
      <div class="card h-100">
        <a href="#"><img class="card-img-top" src="https://thumbs-prod.si-cdn.com/LgXA0_RMSmte4GPRr4QP63pROV4=/420x240/https://public-media.si-cdn.com/filer/20110913074012glowing_cat_web.jpg" alt="glowcat"></a>
        <div class="card-body">
          <h4 class="card-title">
            <a href="#">Extras and Drinks</a>
          </h4>
          <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque earum nostrum suscipit ducimus nihil provident, perferendis rem illo, voluptate atque, sit eius in voluptates, nemo repellat fugiat excepturi! Nemo, esse.</p>
        </div>
      </div>
    </div>
  </div>
          
            <%=ServletUtility.getSuccessMessage(request)%>
            <%=ServletUtility.getErrorMessage(request)%>
          <div class="card-body">
          <form action="/javaWebApplication/OrderCTL" method="post">
                        <input type="hidden" name="uri" value=""> <input
                type="hidden" name="id" value=""> <input
                type="hidden" name="createdBy" value="">
              <input type="hidden" name="modifiedBy"
                value=""> <input type="hidden"
                name="createdDatetime"
                value="">
              <input type="hidden" name="modifiedDatetime"
                value="">
              <div class="form-group row">
                <label for="email_address" 
                  class="col-md-4 col-form-label text-md-right">First Name<font color="red"></font></label>
                <div class="col-md-6">
                  <input type="text"   class="form-control" placeholder="Enter Your Name"
                    name="name" value="" >
                    <font  color="red"></font>
                </div>
              </div>
              
              <div class="form-group row">
                <label for="email_address" 
                  class="col-md-4 col-form-label text-md-right">Main Dish<font color="red"></font></label>
                <div class="col-md-6">
                  <input type="text"   class="form-control" placeholder="Enter Main dish"
                    name="Maindish" value="" >
                    <font  color="red"></font>
                </div>
              </div>
              <div class="form-group row">
                <label for="email_address" 
                  class="col-md-4 col-form-label text-md-right">Drinks<font color="red"></font></label>
                <div class="col-md-6">
                  <input type="text"   class="form-control" placeholder="Enter Drinks"
                    name="Drinks" value="" >
                    <font  color="red"></font>
                </div>
              </div>
              
              
              <div class="form-group row">
                <label for="email_address" 
                  class="col-md-4 col-form-label text-md-right">Extras<font color="red"></font></label>
                <div class="col-md-6">
                  <input type="text"  class="form-control" placeholder="Enter Extras"
                    name="Extras" value="" >
                    <font  color="red"></font>
                </div>
              </div>
              
              <div class="form-group row">
                <label for="email_address" 
                  class="col-md-4 col-form-label text-md-right">day<font color="red"></font></label>
                <div class="col-md-6">
                  <input type="text"   class="form-control" placeholder="Enter day"
                    name="day" value="" >
                    <font  color="red"></font>
                </div>
              </div>
                            <div class="col-md-6 offset-md-4">
                <input type="submit" class="btn btn-primary" name="operation" value="Order">
                
              </div>
              
              
              
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>
  </main>
  <div style="margin-top: 120px">
    <%@ include file="footer.jsp"%>
  </div>
</body>
</html>
 