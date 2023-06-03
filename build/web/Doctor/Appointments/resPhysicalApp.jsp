<%-- 
    Document   : viewApp
    Created on : May 6, 2023, 6:42:50 PM
    Author     : ali_shar
--%>
<%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.ArrayList"%>
<%@page import="webAppObjects.Appointment"%>
<%@page import="webAppObjects.Doctor"%>
<%@page import="java.sql.*"%>
<jsp:useBean class="webAppObjects.Doctor" id="user" scope="session">
</jsp:useBean>
<%user = (Doctor)session.getAttribute("doctorObj");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctor Appointments</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/trialCSS.css" type="text/css"/>
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
        <form action="<%=request.getContextPath()%>/docAppBridge" method="get">
            <h1>Your Appointments</h1>
            <table>
                <tr class="first">
                    <th>Appointment ID</th>
                    <th>Date</th>
                    <th>Time</th>
                    <th>Clinic Name</th>
                    <th>Location</th>
                    <th>Overall Status</th>
                    <th></th>
                    <th></th>
                </tr>
                <%
                    ArrayList<Appointment> apps = Doctor.viewAppointments(user.getNID());
                    if(apps!=null){
                        for(Appointment app: apps){
                        boolean case3 = app.getAppTime().compareTo(Time.valueOf(LocalTime.now()))<0 && app.getAppDate().compareTo(Date.valueOf(LocalDate.now()))==0;
                        if(app.getClinicName()==null|| app.getAppDate().compareTo(Date.valueOf(LocalDate.now()))<0 || case3)
                            continue;
                            String button = "<th><input type=\"submit\" value=\"View History\" name=\"res"+app.getAppID()+"\"></th>";
                            out.println("<tr>"
                                          + "<td>"+app.getAppID()+"</td>"
                                          + "<td>"+app.getAppDate()+"</td>"
                                          + "<td>"+app.getAppTime()+"</td>"
                                          + "<td>"+app.getClinic().getClinicLocation()+"</td>"
                                          + "<td>"+app.getClinicName()+"</td>"
                                          + "<td>"+app.getStatus()+"</td>"
                                          +"<input type='hidden' name='doctor' value=''>"
                                          + "<td>"+button+"</td>"
                                      + "</tr>"
                            );
                        }
                    }
                %>
            </table>
        </form>
    </body>
</html>
