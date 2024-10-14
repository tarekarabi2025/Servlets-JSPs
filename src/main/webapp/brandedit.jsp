<%import java.sql.*;%>
<html xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">

<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>
 <div class="container">
     <%@ include file="/WEB-INF/jspf/Header.jsp" %>

    <div class="row">
        <div class="col-md-3">
            <%@ include file="/WEB-INF/jspf/sliderbar.jsp" %>
        </div>
        <div class="col-md-9" >
            <h2>Brands</h2>
            </hr>
            <form action="brandupdate" method="post">

                <%
                    Connection connection = DB.getCon();
                    String sql = "SELECT * from brand where id = ?"
                    PreparedStatement preparedStatement = connection.prepareStatement(sql);
                    preparedStatement.setString(1,requset.getParameter("id"));
                    ResultSet resultSet = preparedStatment.excuteQuery();
                    if(resultSet.next()){

                     }
                %>

                <div class="form-group">
                    <label >Brand ID</label>
                    <input type="text" class="form-control" name="ID" value="<%resultSet.getInt(id)%>"  placeholder="Enter Brand ID">
                </div>
                <div class="form-group">
                    <label >Brand Name</label>
                    <input type="text" class="form-control" name="name" value="<%resultSet.getString('name')%>"   placeholder="Enter Brand name">
                </div>

                <button type="submit" class="btn btn-primary">Edit</button>
                <%
                    }
                %>
            </form>


        </div>

        </div>

    </div>

 </div>

</body>
</html>
