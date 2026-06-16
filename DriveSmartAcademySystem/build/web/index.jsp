<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Drive Smart Integrated Academy </title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    </head>
    <body>
        <%@include file="header.html" %>
       
        
        <main class="container-fluid text-center " style="margin-bottom: 50vh;">
             <h2>Main Menu</h2>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/book_session.jsp">Book a Session</a>
            <a class="btn btn-warning" href="${pageContext.request.contextPath}/ScheduleServlet">See Schedules</a>
        </main>
        
        <%@include file="footer.jsp" %>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>
