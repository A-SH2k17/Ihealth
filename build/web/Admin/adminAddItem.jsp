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
        <form action="<%=request.getContextPath()%>/AddIController" method="post">
        Item name <input type="text" name="iname"/><br/>
        Item price <input type="text" name="iprice"/><br/>
        Quantity <input type="text" name="quantity"/><br/>
        Item manufacturer <input type="text" name="iman"/><br/>
        Upload image <input type="text" name="image"/><br/>
        <input type="submit" value="ADD"/><br/>
        </form>
    </body>
</html>
