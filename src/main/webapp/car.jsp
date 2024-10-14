<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
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
            <hr/>
            <form action="caradd" method="post">

                <div class="form-group">
                    <label >Title</label>
                    <input type="text" class="form-control" name="title"   placeholder="Enter the title">
                </div>

                <div class="form-group">
                    <label >Description</label>
                    <input type="text" class="form-control" name="description"   placeholder="Enter your Description">
                </div>

                <div class="form-group">
                    <label >Year</label>
                    <input type="text" class="form-control" name="year"   placeholder="Enter the Year">
                </div>

                <div class="form-group">
                    <label >Price</label>
                    <input type="text" class="form-control" name="price"   placeholder="Enter your price">
                </div>


                <div class="form-group">
                    <label >Model</label>

                    <select name="model_id" class="form-control" >
                        <%
                        Connection con = DB.getCon();
                        String sql = "SELECT * from model";
                        PreparedStatement st = connection.prepareStatement(sql);
                        ResultSet rs = st.executeQuery();
                        while(rs.next())
                        {
                        %>

                        <option value="<% rs.getString('id')%>"><% rs.getString('name')%></option>
                        <%}%>

                    </select>


                </div>
                <div class="form-group">
                    <label >Member</label>
                    <select name="member_id" class="form-control" >
                        <%
                        Connection con1 = DB.getCon();
                        String sql1 = "SELECT * from member";
                        PreparedStatement st1 = connection.prepareStatement(sql1);
                        ResultSet rs1 = st1.executeQuery();
                        while(rs1.next())
                        {
                        %>

                        <option value="<% rs.getString('id')%>"><% rs.getString('name')%></option>
                        <%}%>

                    </select>



                </div>

                <hr/>



                <button type="submit" class="btn btn-primary">Save</button>

            </form>

        </div>

        </div>

    </div>

 </div>

</body>
</html>
