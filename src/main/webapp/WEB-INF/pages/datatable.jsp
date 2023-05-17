<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Table</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css">
  
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>
<table id="mike" class="table table-hover" >
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
<script>
$(document).ready( function () {
    $('#mike').DataTable();
} );
</script>
</html>