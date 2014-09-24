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
			
		</table>
		
		<input type="submit" value="Search">
		</form>
		
        </div>

        <footer>
          <div class="logo"><a href="https://www.openshift.com/"></a></div>
        </footer>
</section>
</body>
</html>
