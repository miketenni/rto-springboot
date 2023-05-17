<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<style>
table, th, td {
  border:1px solid black;
}
</style>
<meta charset="UTF-8">
<title>HtmlTable</title>
</head>
<body>
<table style="width:100%">
<thead>
  <tr>
                    <th>Name</th>
                    <th>Phone</th>
                    <th>Gender</th>  
                    <th>Age</th>
                    <th>Vehicle Number</th>
                    <th>Vehicle Model</th>
                    <th>Address</th>
   </tr>
 </thead>
 <tbody>
 
   <c:forEach var="entity" items="${tablelist}">
                      <tr>
                        <td><c:out value="${entity.firstname}"/></td>
                        <td><c:out value="${entity.phoneNumber}"/></td>
                        <td><c:out value="${entity.gender}"/></td>  
                        <td><c:out value="${entity.age}"/></td>
                        <td><c:out value="${entity.vNumber}"/></td>
                        <td><c:out value="${entity.vModel}"/></td>
                        <td><c:out value="${entity.address}"/></td>
    				</tr>
 </c:forEach>
 
  </tbody>

</table>
 <button type="button" onclick="location.href='http://localhost:8080/home'" class="btn btn-primary m-4">click to home</button>
          
</body>
</html>