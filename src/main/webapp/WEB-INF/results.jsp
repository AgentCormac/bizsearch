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
		
		<a href="/index.jsp">Search again</a>
		
		<pre>
		<table>
		<thead>
		   <tr><td>Category</td><td>Name</td><td>Address</td><td>City</td><td>County</td><td>Postcode</td><td>Telephone</td></tr>
		</thead>
		<tbody>
		<c:forEach var="b" items="${biz}">
		     <tr>	
		       	<td>${b.category}</td>
		       	<td><a href="http://${b.website}">${b.name}</a></td>
		       	<td>${b.address1}</td>
		       	<td>${b.city}</td>
		       	<td>${b.county}</td>
		       	<td>${b.postcode}</td>
		       	<td>${b.telephone}</td>
		     </tr>        
        </c:forEach>		
		</tbody>
		</table>
		</pre>
		
		</div>

        <footer>
          <div class="logo"><a href="https://www.openshift.com/"></a></div>
        </footer>
</section>
</body>
</html>