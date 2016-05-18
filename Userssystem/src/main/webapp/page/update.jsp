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
     <form action="user_update.action" method="post" style="width:500px; margin:80px auto; text-align:center;">
      <table border="1" >
      	<tr>
      	 	<td><font color="red">${sessionScope.errorMsg }</font></td> 
      	</tr>
      	<tr>
           <td><input type="hidden" name="id" value="${sessionScope.users.id }" />${sessionScope.users.id }</td>
      	</tr>	
      	<tr>
      	  <td><input type="text" name="name"  value="${sessionScope.users.name }" /></td>
      	</tr>
      	<tr>
      	  <td><input type="text" name="birthday" value="${sessionScope.users.birthday }"/></td>
      	</tr>
      	<tr>
	   		<td>
	   	  	<select name="gender">
	   	  	 	<c:choose>
	   	  	 		<c:when test="${sessionScope.users.gender eq '男'}">
	   	  	 			<option selected>男</option>
	   	  	 			<option>女</option>
	   	  	 		</c:when>
	   	  	 		<c:otherwise>
	   	  	 			<option>男</option>
	   	  	 			<option selected>女</option>
	   	  	 		</c:otherwise>
	   	  	 	</c:choose>
	   	  	 </select>
	   	  	 </td>
      	 </tr>
      	  <tr>
      	  	 <td><input type="text" name="career" value="${sessionScope.users.career }"/></td>
      	  </tr>
      	   <tr>
      	  	 <td><input type="text" name="address" value="${sessionScope.users.address }"/></td>
      	  </tr>
      	  <tr>
      	  	 <td><input type="text" name="mobile" value="${sessionScope.users.mobile }"/></td>
      	  </tr>
      	  <tr>
      	  	 <td><input type="submit" value="更新" /></td>
      	  </tr>
      </table>
    </form>
    <hr />
  </body>
</html>
