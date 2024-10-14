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
            <h2>Car List</h2>
            </hr>
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Title</th>
                    <th scope="col">Brand Name</th>
                    <th scope="col">Year</th>
                    <th scope="col">Price</th>
                    <th scope="col">Model</th>

                </tr>
                </thead>
                <tbody>

                <%
                Connection con = DB.getCon();
                String sql = "SELECT * from car Inner join model on model.id=car.model_id Inner join brand on brand.id=model.brand_id ";
                PreparedStatement st = connection.prepareStatement(sql);
                ResultSet rs = st.executeQuery();
                while(rs.next())
                {
                %>
                <tr>
                    <th><% rs.getInt("car.id") %></th>
                    <td><% rs.getString("car.title") %></td>
                    <td><% rs.getString("brand.name") %></td>
                    <td><% rs.getString("car.year") %></td>
                    <td><% rs.getString("car.price") %></td>
                    <td><% rs.getString("model.name") %></td>
                    <td>
                        <a href="carmodelshow.jsp?id=<% rs.getInt('model.id')%>"class="btn btn-success">Show</a>
                        <a href="carmodeledit.jsp?id=<% rs.getInt('model.id')%>"class="btn btn-warning">Edit</a>
                        <a href="carmodeldelete.jsp?id=<% rs.getInt('model.id')%>"class="btn btn-danger">Delete</a>


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
