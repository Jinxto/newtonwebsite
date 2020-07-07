    <%@page import="javaWebApplication.utility.ServletUtility"%>
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
    <h3 style="color: green;"><%=ServletUtility.getSuccessMessage(request)%></h3>
    <h1>Welcome User <%=session.getAttribute("user")%></h1>
    <%@ include file="footer.jsp"%>
    </body>
    </html>