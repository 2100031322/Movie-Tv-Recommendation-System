<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  This is the JSP page<br/>
  list values ${ul}<br/>
  <table border="1">
  <tr> 
    <th>Uun</th>
    <th>Upw</th>
  </tr>
  <%@ page import = "com.example.demo.User" %>
  <%@ page import = "java.util.List" %>
  <% for(User user:(List<User>)request.getAttribute("ul")) { %>
    <tr>
      <td><%= user.getUn() %></td>
      <td><%= user.getPw() %></td>
    </tr>
  
  <% } %>
  </table>
  
</body>
</html>
