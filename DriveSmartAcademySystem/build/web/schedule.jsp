
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List, model.SessionBean"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Drive Smart Integrated Academy </title>
        
        <%
            List<SessionBean> list = (List<SessionBean>) request.getAttribute("sessionList");
        %>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <h1 class="text-center">Schedules</h1>
        <table class=" table table-striped table-hover">
            <tr>
                <th>Session Id</th>
                <th>Student Name</th>
                <th>Branch Location</th>
                <th>Lesson Type</th>
                <th>Status</th>
            </tr>
            <% for(SessionBean sessionBean : list){%>
            <tr>
                <td><%=sessionBean.getSessionId()%></td>
                <td><%=sessionBean.getStudentName()%></td>
                <td><%=sessionBean.getBranchLocation()%></td>
                <td><%=sessionBean.getLessonType()%></td>
                <td><%=sessionBean.getStatus()%></td>
            </tr>
            <%}%>
        </table>
        
        <div class="container-fluid text-center">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/index.jsp">Home</a>
        </div>
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    </body>
</html>
