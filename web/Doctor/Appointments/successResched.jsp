<%-- 
    Document   : successResched
    Created on : May 6, 2023, 6:36:53 PM
    Author     : ali_shar
--%>
<%@page import="webAppObjects.Doctor"%>
<jsp:useBean class="webAppObjects.Doctor" id="user" scope="session">
</jsp:useBean>
<%user = (Doctor)session.getAttribute("doctorObj");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reschedule Successful</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/mainStyle2.css" type="text/css"/>
    </head>
    <body>
        <nav>
            <img src="<%=request.getContextPath()%>/Images/doctor.png" alt="alt" id="logo"/>
            <ul>
                <li><a href="<%=request.getContextPath()%>/Doctor/homepage.jsp">Home</a></li>
                <li><a href="<%=request.getContextPath()%>/Doctor/Appointments/doctorAppActions.jsp">Appointments</a></li>
                <li><a href="#">Documents</a></li>
                <li><a href="#"><%=user.getFullName()%></a></li>
                <!--Logout button here-->
            </ul>
        </nav>
        <h1>Addition Successful</h1>
        <h3><a href="<%=request.getContextPath()%>/Doctor/homepage.jsp">Go to Homepage</a></h3>
        <h3><a href="<%=request.getContextPath()%>/Doctor/Appointments/reschedApp.jsp">Reschedule Another Appointment</a></h3>
    </body>
</html>