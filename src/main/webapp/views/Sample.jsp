<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="myFirstApp">
<head>
<script src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Angular JS Application</title>
</head>
<body>
<div ng-controller="textAreaController">
	Enter Your Text::<textarea rows="10" cols="" ng-model="message" ng-click="clear()"></textarea>
	<button ng-click ="save()">save</button>
	<button ng-click ="clear()">clear</button>
	<a href="../index.jsp">Home</a>
	<p>Number of character left::<span ng-bind="left()"></span></p>
</div>

</body>
<script type="text/javascript" src="../scripts/AJS/myFirstApp.js"></script>
<script type="text/javascript" src="../scripts/AJS/textAreaController.js"></script>
</html>