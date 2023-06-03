<%-- 
    Document   : controlCreditInsertion
    Created on : May 20, 2023, 7:38:41 PM
    Author     : zizof
--%>

<%@page import="webAppObjects.Patient"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="webAppObjects.Patient" id="user" scope="session">
</jsp:useBean>
<jsp:useBean class="webAppObjects.Credit" id="credit" scope="page">
</jsp:useBean>

<%user = (Patient)session.getAttribute("patientObj");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Credit Insertion Controller</title>
    </head>
    <body>
       
            <% 
                credit.setCardNumber((String)request.getAttribute("cardNumber"));
                credit.setHolderName((String)request.getAttribute("holderName"));
                      
          int check1 = credit.addCredit(user.getNID());
          if(check1>0){
          RequestDispatcher rd = request.getRequestDispatcher("insertionSuccessful.jsp");
            rd.include(request, response);
                }
                else {
            out.print("<b>Insertion Failed</b>");
            RequestDispatcher rdFail = request.getRequestDispatcher("insertCard.jsp");
            rdFail.include(request, response);
                }
                %>
           
    </body>
</html>
