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
            <h2>Brand list</h2>
            </hr>
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">BrandName</th>
                    <th scope="col">Options</th>

                </tr>
                </thead>
                <tbody>

                <%
                Connection con = DB.getCon();
                String sql = "SELECT * from brand";
                PreparedStatement st = connection.prepareStatement(sql);
                ResultSet rs = st.executeQuery();
                while(rs.next())
                {
                %>
                <tr>
                    <th><% rs.getInt("id") %></th>
                    <td><% rs.getString("name") %></td>
                    <td>
                        <a href="show.jsp?id=<% rs.getInt('id')%>"class="btn btn-success">Show</a>
                        <a href="brandedit.jsp?id=<% rs.getInt('id')%>"class="btn btn-warning">Edit</a>
                        <a href="delete.jsp?id=<% rs.getInt('id')%>"class="btn btn-danger">Delete</a>


                    </td>


                </tr>

                <% } %>

                </tbody>
            </table>


        </div>

        </div>

    </div>

 </div>


</body>
</html>
