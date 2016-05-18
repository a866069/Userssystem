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
    
    <table border="1" style="width:800px; margin:80px auto; text-align:center;">
    	  <c:forEach items="${sessionScope.users}" var="p" >
				<tr>
					<td>${p.id }</td>
					<td>${p.name }</td>
					<td>${p.birthday }</td>
					<td>${p.gender }</td>
					<td>${p.career }</td>
					<td>${p.address }</td>
					<td>${p.mobile }</td>
					<td>  
					    <input type="button" value="详细" 
					    onclick="javascript:location.href='user_detail.action?id=${p.id}'" />  
					    <input type="button" value="更新" 
					    onclick="javascript:location.href='user_allupdate.action?id=${p.id}'" />  
					</td>
				</tr>    	  		
    	  </c:forEach>
    </table>
    <hr />
  </body>
</html>
