

<!--cardadd\namefbfn%fnfgn-->

<!--{-->
<!--name-->
<!--email-->
<!--}-->

<!--@98jq-->
<!--{ na-->

<!--company/users-->
<!--get req-->
<!--company/users-->
<!--{-->
<!--name :-->
<!--email :-->
<!--}-->
<!--post-->

<!--company/users-->
<!--{-->
<!--name :-->
<!--email :-->
<!--}-->
<!--put-->

<!--company/users?id=1-->
<!--Delete req-->




















dopost/user
{
name: , jpb: , sdvdsv: }
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
            <h2>Registation</h2>
            </hr>

            <form action="reg" method="post">
                <div class="form-group">
                    <label for="exampleInputName">First Name</label>
                    <input type="text" class="form-control" name="fName" id="exampleInputName"  placeholder="Enter your first name">
                </div>
                <div class="form-group">
                    <label for="exampleInputName">last Name</label>
                    <input type="text" class="form-control" name="lName" id="exampleInputName1"  placeholder="Enter your last name">
                </div>
                <div class="form-group">
                    <label for="exampleInputMobile">Mobile Number</label>
                    <input type="number" class="form-control" name="mobile" id="exampleInputMobile"  placeholder="Enter your mobile number">
                </div>

                <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input type="email" class="form-control" name="email" id="exampleInputEmail1"  placeholder="Enter your email">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" name="password" id="exampleInputPassword1" placeholder="Password">
                </div>
                <div class="form-group">
                    <label for="exampleInputPhoto">Photo</label>
                    <input type="file" class="form-control" name="photo" id="exampleInputPhoto" placeholder="Photo">
                </div>

                <button type="submit" class="btn btn-primary">Submit</button>
            </form>

        </div>

        </div>

    </div>

 </div>

</body>
</html>
