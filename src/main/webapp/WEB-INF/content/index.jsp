<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Guitar</title>
</head>
<body>
		    <div class="col-md-12 row">
			    <div class="col-md-4"> 
			    	<img src="pics/lopgo.jpg" width="173" height="97" longdesc="pics/lopgo.jpg">
			    </div>
			    <div class="col-md-4"> </div>
			    <div class="col-md-4">
			    <form method="post" action="guitarserach">
						<div class="col-md-6" style="padding-top:10px">
							<select class="form-control" name="StringNumber">
								<option value="0">Condition...</option>
								<option value="1">Builder</option>
								<option value="2">Model</option>
								<option value="3">Type</option>
								<option value="4">BackWood</option>
								<option value="5">TopWood</option>
							</select>
						</div>
						<div  class="col-md-6" style="margin-top:10px">
							 <input type="text" class="form-control" placeholder="Serach..." aria-describedby="basic-addon1" name="guitarSpec">
						</div>	
						<div class="col-md-6" style="margin-top:10px">
							 <input type="submit"   class="btn btn-success" value="Serach" />
						</div>
					</form>
			    </div>
		    	
		    </div>

<div class ="nav">
<ul>
<li><a href="#">Home</a></li>
	
  <li><a href="#">Guitars</a>

        <ul>
          <li><a href="#">Electric Guitars</a></li>
          <li><a href="#">Acoustic Guitars</a></li>
          <li><a href="#">Used Guitars</a></li>
        </ul>
    </li>
	  
</li>
<li><a href="#">Bass</a></li>
<li><a href="#">Amps&Effects</a></li>
<li><a href="#">Drums</a></li>
<li><a href="#">Software</a></li>

</ul>
</div>

<div class="row" style="margin-top: 50px;color:white;">
	<div class="col-md-12 row" >
		<div class="col-md-2 text-center"></div>
	</div>
		<div class="col-md-12 text-center">
			<div class="row ">
				<div class="col-md-2"> </div>
				<div class="col-md-1">Model</div>
				<div class="col-md-1">Builder</div>
				<div class="col-md-1">Type</div>
				<div class="col-md-1">BackWood</div>
				<div class="col-md-1">TopWood</div>
				<div class="col-md-1">Number</div>
				<div class="col-md-1">Price(￥)</div>
				<div class="col-md-3"> </div>
			</div>
			<div class="row" style="margin-top:15px;">
				<c:forEach items="${requestScope.guitarList }" var="guitarList">
					<div class="col-md-2"> </div>
		            <div class="col-md-1">${guitarList.serialNumber}</div>
					<div class="col-md-1">${guitarList.price}</div>
					<div class="col-md-3"> </div>
		        </c:forEach> 
			</div>
		</div>
	
</div>
</body>
</html>