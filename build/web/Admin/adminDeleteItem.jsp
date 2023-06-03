<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin</title>
           <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/mainStyle2.css" type="text/css"/>
    </head>
    <body>
        <nav>
            <img src="<%=request.getContextPath()%>/Images/doctor.png" alt="alt" id="logo"/>
            <ul>
                <li><a href="<%=request.getContextPath()%>/index.html">Home</a></li>
                <li><a href="<%=request.getContextPath()%>/Admin/adminActions.jsp">Admin Home</a></li>
                <li><a href="#">Admin</a></li>
                <!--Logout button here-->
            </ul>
        </nav>
                <form action="<%=request.getContextPath()%>/delPharItemController">
                    Item name<input type="text" name="iname"/><br/>
        <input type="submit" value="Delete"/><br/>
        </form>
    </body>
</html>