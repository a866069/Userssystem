<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML >
<html>
  <head>
    <base href="/Userssystem/">
    <meta charset="utf-8">
    <title>用户信息</title>
  </head>
  
  <body>
    
      <table border="1" style="width:500px; margin:80px auto; text-align:center;">
      	  <tr>
      	  	 <td>${sessionScope.users.id}</td>
      	  </tr>
      	  <tr>
      	  	 <td>${sessionScope.users.name }</td>
      	  </tr>
      	  <tr>
      	  	 <td>${sessionScope.users.birthday }</td>
      	  </tr>
      	  <tr>
      	  	 <td>${sessionScope.users.gender }</td>
      	  </tr>
      	  <tr>
      	  	 <td>${sessionScope.users.career }</td>
      	  </tr>
      	  <tr>
      	  	 <td>${sessionScope.users.address }</td>
      	  </tr>
      	  <tr>
      	  	 <td>${sessionScope.users.mobile }</td>
      	  </tr>
      	  <tr>
      	  	<td><a href="javascript:void(0)" onclick="javascript:history.back();">返回</a></td>
      	  </tr>
      </table>
    <hr />
  </body>
</html>
