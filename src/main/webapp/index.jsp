<html>
<script src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
 <style>
table, td, th {
  border: 1px solid grey;
  border-collapse: collapse;
  padding: 5px;
}

th {
    background-color: green;
    color: white;
    width:50px;
    height:20px;
}
td {
 	background-color: #555fff;
	width:150px;
    height:20px;
}

.btn {
  background: #3498db;
  background-image: -webkit-linear-gradient(top, #3498db, #2980b9);
  background-image: -moz-linear-gradient(top, #3498db, #2980b9);
  background-image: -ms-linear-gradient(top, #3498db, #2980b9);
  background-image: -o-linear-gradient(top, #3498db, #2980b9);
  background-image: linear-gradient(to bottom, #3498db, #2980b9);
  -webkit-border-radius: 28;
  -moz-border-radius: 28;
  border-radius: 28px;
  font-family: Arial;
  color: #ffffff;
  font-size: 20px;
  padding: 10px 20px 10px 20px;
  text-decoration: none;
}

.btn:hover {
  background: #3cb0fd;
  background-image: -webkit-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -moz-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -ms-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -o-linear-gradient(top, #3cb0fd, #3498db);
  background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
  text-decoration: none;
}

</style>


<body>
<h2>Angular JS!</h2>
<!-- Examples on angular js basics -->

<form ng-app="" ng-controller="validateCtrl" name="myForm" novalidate>

<p>Username:<br><input type="text" name="user" ng-model="user" required>
<span style="color:red" ng-show="myForm.user.$dirty && myForm.user.$invalid">
<span ng-show="myForm.user.$error.required">Username is required.</span>
</span>
</p>

<p>Email:<br>
<input type="email" name="email" ng-model="email" required>
<span style="color:red" ng-show="myForm.email.$dirty && myForm.email.$invalid">
<span ng-show="myForm.email.$error.required">Email is required.</span>
<span ng-show="myForm.email.$error.email">Invalid email address.</span>
</span>
</p>

<p>
<input type="submit"
ng-disabled="myForm.user.$dirty && myForm.user.$invalid ||  
myForm.email.$dirty && myForm.email.$invalid">
</p>
<a href="./views/Sample.jsp">Next Page</a>
</form>

<script>
function validateCtrl($scope) {
    $scope.user = 'John Doe';
    $scope.email = 'john.doe@gmail.com';
}
</script>
<script type="text/javascript">
	function personalController($scope){
		$scope.firstName="john";
		$scope.lastName="mathew";
		$scope.fullName = function(){
			return $scope.firstName +"--"+$scope.lastName;
		}
		$scope.reset();
	}
	
	function nameController($scope){
		//alert("in controller")
		$scope.names = [{name:'virat',team:'BRC'},
		                {name:'sachin',team:'MI'},
		                {name:'devillers',team:'BRC'}];
	}
	
	function httpController($scope,$http){
		
		$http.get("http://www.w3schools.com/website/Customers_JSON.php")
		.success(function(response){
			$scope.name = response;
			});
	}
	function clickController($scope){
		$scope.count = 0; 
	}
	function viewController($scope){
		$scope.name="aravind";
		$scope.pwd="1234";
		$scope.myVar=true;
		$scope.toggle = function(){
			$scope.myVar=!$scope.myVar;
		};
	}
	
</script>
</body>
</html>
