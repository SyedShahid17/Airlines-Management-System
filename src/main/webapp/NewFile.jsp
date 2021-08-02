<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.io.IOException"%>
<%@page import="java.net.MalformedURLException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try {
	  
    // Create URL object
    URL url = new URL("http://localhost:8080/Airlines/ticketdownload.jsp");
    BufferedReader readr = 
      new BufferedReader(new InputStreamReader(url.openStream()));

    // Enter filename in which you want to download
    BufferedWriter writer = 
      new BufferedWriter(new FileWriter("Flight_ticket.pdf"));
      
    // read each line from stream till end
    String line;
    while ((line = readr.readLine()) != null) {
        writer.write(line);
    }

    readr.close();
    writer.close();
    out.println("Successfully Downloaded.");
    response.sendRedirect("View.jsp");
}

// Exceptions
catch (MalformedURLException mue) {
    System.out.println("Malformed URL Exception raised");
}
catch (IOException ie) {
    System.out.println("IOException raised");
}



%>

</body>
</html>