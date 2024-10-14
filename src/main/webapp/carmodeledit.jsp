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
            <form action="modeladd" method="post">
                <div class="form-group">
                    <label for="exampleInputName">Brand</label>
                    <select name="brand_id" class="form-control" >
                        <%
                            Connection con1 = DB.getCon();
                            String sql2 = "SELECT * from model where id=?";
                            PreparedStatement st1 = con1.prepareStatement(sql2);
                            st1.setString(1,request.getParameter("id"));
                            ResultSet rs1 = st1.executeQuery();
                            if(rs1.next())
                            {
                        %>

                        <%
                            Connection con = DB.getCon();
                            String sql = "SELECT * from brand";
                            PreparedStatement st = con.prepareStatement(sql);
                            ResultSet rs = st.executeQuery();
                            while(rs.next())
                            {
                                String selection ="";
                                if(rs.getInt("id")== rs1.getInt("brand_id"))){
                                    selection ="selected";

                            }
                        %>
                        <option <%=selection%>  value="<% rs.getString('id')%>"><% rs.getString('name')%></option>
                        <%}%>

                    </select>
                </div>
                <% } %>
                <hr/>

                <div class="form-group">
                    <label for="exampleInputName">Model Name</label>
                    <input type="text" class="form-control" name="name" id="exampleInputName" value="<% rs.getString('id')%>"><% rs.getString('name')%> placeholder="Enter Model name">
                </div>

                <button type="submit" class="btn btn-primary">Save</button>

            </form>

        </div>

        </div>

    </div>

 </div>

</body>
</html>
