<html xmlns="http://www.w3.org/1999/html">

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
        <div class="col-md-9">
            <div class="well well-lg form-inline" align="right">
                <input type="text" class="form-control">&nbsp;
                <button class="btn btn-info">Search</button>
            </div>
            <hr/>
            <div class="col-md-9">
                <div class="card" style="width: 18rem;">
                    <img  src="Images/lambo.png.webp" width="285x" height="285px">
                    <div class="card-body">
                        <h5 class="card-title">Lamborghini Aventador 2017</h5>
                        <p class="card-text"><b>total milage :2000 km </b></p>
                        <p class="card-text">Country: Italy</p>
                        <p class="card-text">Price: 500k $</p>
                        <a href="#" class="btn btn-primary">View Item</a>
                    </div>
                </div>

        </div>

    </div>
 </div>
</body>
</html>
