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
            <h2>Login</h2>
            </hr>
            <form action="login.jsp" method="post">
                <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input type="email" class="form-control" id="exampleInputEmail1"  placeholder="Enter email">

                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div>

                <button type="submit" class="btn btn-primary">Login</button>
            </form>

        </div>

        </div>

    </div>

 </div>

</body>
</html>
