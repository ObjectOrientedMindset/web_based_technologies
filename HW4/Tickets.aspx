<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tickets.aspx.cs" Inherits="Airline_HW4.Tickets" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
		<title>Flights</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        		<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Poppins">

        <link rel="stylesheet" href="mycss.css">
    </head>

	<style type="text/css">
		.affix{
			top:5rem;
		}
		
		body{
            position: relative;
		}
		
	</style>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-inverse" data-spy="affix"  style="border-radius:0px !important; margin:0;border: 0 ; width: 100%;top:0;z-index: 9999 !important">
					<div class="navbar-header">
						  <a class="navbar-brand" >AirlineTR</a>
						</div>						
					</div>
				</nav>

		<div class="container" data-spy="affix" style="margin: 0;bottom: 0;float: left;top:5rem;width: 20%;height:100%; background-color: #222222">

		  <ul class="nav nav-pills nav-stacked" style="border-radius: 0">
		    <li>
		    	<a href="Default.aspx" id="m1">Home</a>		    	
		    </li>
		  </ul>
		</div>

		<div id="#myscroll" class="container" style="margin-left: 0;margin-top: 5rem; float: right; width:80%; padding: 0 5rem 0 5rem">
			<h2>Ticket</h2>
			 <hr>
				<br>
		<table class="table table-striped table-hover">
				    <thead>
					    <tr>
					    	<th>#</th>
					        <th>FlightNo</th>
					        <th>From</th>
					        <th>To</th>
					        <th>Departure Date</th>
					        <th>Time</th>
					        <th>Capacity</th>
					    </tr>
				    </thead>
					<tbody>
					    <tr>
					    	<td>1</td>
					    	<td><asp:Label CssClass="Title" ID="FlightNo" runat="server"></asp:Label></td>
					        <td><asp:Label CssClass="Title" ID="From" runat="server"></asp:Label></td>
					        <td><asp:Label CssClass="Title" ID="To" runat="server"></asp:Label></td>
					        <td><asp:Label CssClass="Title" ID="DepartureDate" runat="server"></asp:Label></td>
					        <td><asp:Label CssClass="Title" ID="Time" runat="server"></asp:Label></td>
					        <td><asp:Label CssClass="Title" ID="Capacity" runat="server"></asp:Label></td>
					    </tr>
					</tbody>
			</table>
			</div>

    </form>
</body>
</html>
