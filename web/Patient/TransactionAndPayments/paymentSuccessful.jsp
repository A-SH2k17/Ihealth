<%-- 
    Document   : paymentSuccessful
    Created on : Apr 25, 2023, 9:22:32 AM
    Author     : ali_shar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transaction Successful</title>
    </head>
    <body>
        <h1>Payment Successful</h1>
        <h3><a href="<%=request.getContextPath()%>/Patient/patientHomePage.jsp">Go to Homepage</a></h3>
        <h3><%
            if(request.getParameter("booking")!=null)
                out.print("<a href='"+request.getContextPath()+"/Patient/Appointments/patientAppBook.jsp'>Book Another Appointment</a>");
            if(request.getParameter("pharm")!=null)
                out.print("<a href='"+request.getContextPath()+"/Patient/Pharm/pharmacy.jsp'>Purchase Another Item</a>");
            %></h3>
    </body>
</html>
