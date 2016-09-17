<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 
<title>Shopping Cart Finalize</title>
 
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="styles.css"> 
 <style >
 .btn-success {
    color: #fff;
    background-color: #109f05;
    border-color: #229910;
    height:40px;
    width:170px;
}
.btn-danger{
    color: #fff;

    height:40px;
    width:170px;
}
 body { margin-top:20px; }
.panel-title {display: inline;font-weight: bold;}
.checkbox.pull-right { margin: 0; }
.pl-ziro { padding-left: 0px; }
 
 </style>
</head>
<body>
    <jsp:include page="_header.jsp" />
 
    <jsp:include page="_menu.jsp" />
 
    <div class="page-title">Final Payment</div>
    <div class="container">
    <div class="row">
        <div class="col-xs-12 col-md-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Payment Details
                    </h3>
                    <div class="checkbox pull-right">
                        <label>
                            <input type="checkbox" />
                            Remember
                        </label>
                    </div>
                </div>
                <div class="panel-body">
                    <form role="form">
                    <div class="form-group">
                        <label for="cardNumber">
                            CARD NUMBER</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="cardNumber" placeholder="Valid Card Number"
                                required autofocus />
                            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                        </div>
                    </div>
                      <!-- Name -->
          <div class="control-group">
            <label class="control-label"  for="username">CARD HOLDER'S NAME</label>
            <div class="controls">
                 <input type="text" class="form-control" id="cardNumber" placeholder=""
                                required  />
            </div>
          </div>
                    <div class="row">
                        <div class="col-xs-7 col-md-7">
                            <div class="form-group">
                                <label for="expityMonth">
                                    EXPIRY DATE</label>
                                <div class="col-xs-6 col-lg-6 pl-ziro">
                                    <input type="text" class="form-control" id="expityMonth" placeholder="MM" required />
                                </div>
                                <div class="col-xs-6 col-lg-6 pl-ziro">
                                    <input type="text" class="form-control" id="expityYear" placeholder="YY" required /></div>
                            </div>
                        </div>
                        <div class="col-xs-5 col-md-5 pull-right">
                            <div class="form-group">
                                <label for="cvCode">
                                    CVV2 CODE</label>
                                <input type="password" class="form-control" id="cvCode" placeholder="CVV2" required />
                            </div>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
            
            <ul class="nav nav-pills nav-stacked">
                <li class="active"><a href="#"><span class="badge pull-right"><span class="glyphicon glyphicon-usd " ></span></span> Invoice Total</a>
                </li>
            </ul>
            <br/>
       <form action="payment"><input type="submit" class="btn btn-success btn-md pull-right"value="PAY"  /></form>
        <form action="payment1"><input type="submit" class="btn btn-danger btn-md pull-left"value="cancel"  /></form>
        </div>
    </div>
</div>
    
   
 
   
 <hr class="featurette-divider">
<jsp:include page="_footer.jsp" />
</body>
</html>