<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Drive Smart Integrated Academy </title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <div class="container text-center py-3">
            <h1>Book Session</h1>
            <form class="mx-auto" action="${pageContext.request.contextPath}/BookSessionServlet" method="POST">
                Student Name: <input type="text" required name="studentName"> <br><br>
                Branch Location: <input type="text" required name="branchLocation"> <br><br>
                Lesson Type: <select name="lessonType">
                    <option value="Manual">Manual</option>
                    <option value="Automatic">Automatic</option>
                </select> <br><br>

                <button class="btn btn-primary" type="submit">Book</button>
                <a class="btn btn-danger" href="${pageContext.request.contextPath}/index.jsp">Cancel</a>
            </form>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>
