<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <link type="text/css" rel="stylesheet" href="/css/main.css.jsp" />
  <title>Welcome to OpenShift</title>

</head>
<body>

<section class='container'>
          <hgroup>
            <h1>Welcome to Business Support Query</h1>
          </hgroup>


        <div class="row">

        <h2>
		Search Business Support Organisations
		</h2>
		
		<form name="input" action="/bizSearch" method="get">
		<table>
		<tr>
			<td>Category</td><td> <input type="text" name="category" /> </td>
		</tr>
		<tr>
			<td>City</td><td> <input type="text" name="city" /> </td>
		</tr>
		<tr>
			<td>County</td><td> <input type="text" name="county" /> </td>
		</tr>
		<tr>
		<td cellspan="2"><input type="submit" value="Search">
		</td>
		</tr>		
		</table>
		</form>
		
        </div>

        <footer>
          <div class="logo"><a href="https://www.openshift.com/"></a></div>
        </footer>
</section>
</body>
</html>
