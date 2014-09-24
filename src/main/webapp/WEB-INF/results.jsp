<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <link type="text/css" rel="stylesheet" href="/css/main.css" />
  <title>Welcome to OpenShift</title>
  
  <style>

  table { border-collapse: collapse; }
  th, td { padding: 10px; }

  table,th,td { border-top: 1px solid #bfbfbf; border-bottom: 1px solid #bfbfbf; }
  th { font-weight: bold; }
  tr.data:nth-child(even) { background-color: #efefef; }

</style>

</head>
<body>

<section class='container'>
          <hgroup>
            <h1>Welcome to Business Support Query</h1>
          </hgroup>


        <div class="row">

        <h2>
		Results
		</h2>
		<h3><a href="/index.jsp">Search again</a></h3>
		
		<table>
		   <tr><th>Category</th><th>Name</th><th>Address</th><th>City</th><th>County</th><th width=10%>Postcode</th><th width="10%">Telephone</th></tr>
		<c:forEach var="b" items="${biz}">
		     <tr class="data">	
		       	<td>${b.category}</td>
		       	<td><a href="http://${b.website}">${b.name}</a></td>
		       	<td>${b.address1}</td>
		       	<td>${b.city}</td>
		       	<td>${b.county}</td>
		       	<td>${b.postcode}</td>
		       	<td>${b.telephone}</td>
		     </tr>        
        </c:forEach>		
		</table>
		
		</div>

        <footer>
          <div class="logo"><a href="https://www.openshift.com/"></a></div>
        </footer>
</section>
</body>
</html>