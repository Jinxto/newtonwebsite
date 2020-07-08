<%@page import="java.sql.DriverManager"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ include file="header.jsp"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://sql12.freemysqlhosting.net:3306/";
String database = "sql12352804";
String userid = "sql12352804";
String password = "LHG77qNqXs";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
<body>
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
<h1>5 Newton Orders</h1>
<table class="table table-striped">
<thead>
  <tr>
       <th scope="col">name</th>
      <th scope="col">Main Dish</th>
      <th scope="col">Drinks</th>
      <th scope="col">Extras</th>
      <th scope="col">Day</th>
    </tr>
  </thead>

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="SELECT * FROM `order`";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tbody>
  <tr>
   

<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("Maindish") %></td>
<td><%=resultSet.getString("Drinks") %></td>
<td><%=resultSet.getString("Extras") %></td>
<td><%=resultSet.getString("day") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</tbody>

</table>
<%@ include file="footer.jsp"%>