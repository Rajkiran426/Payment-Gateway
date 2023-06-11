<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DISPLAY FLIGHTS</title>
</head>
<body>
	<h2>FLIGHT SEARCH RESULTS</h2>
	<h3>LIST OF FLIGHTS</h3>
	<table border="1">
		<tr>
			<th>AIRLINES</th>
			<th>DEPARTURE CITY</th>
			<th>ARRIVAL CITY</th>
			<th>DEPARTURE TIME</th>
			<th>SELECT FLIGHT</th>
		</tr>
		<c:forEach var="findFlight" items="${findFlights}">
			<tr>
				<td>${findFlight.operatingAirlines}</td>
				<td>${findFlight.departureCity}</td>
				<td>${findFlight.arrivalCity}</td>
				<td>${findFlight.estimatedDepartureTime}</td>
				<td><a href="showCompleteReservation?flightId=${findFlight.id}">Select</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>