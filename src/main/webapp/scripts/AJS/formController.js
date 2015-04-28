/**
 * 
 */
appForm.controller("formController",function($scope){
	//$scope.master = {name:"cogbooks",dept:"E-Learning"};
	//$scope.user = {name:"cogbooks",dept:"E-Learning"};
	$scope.reset = function(){
		//alert("In reset function")
	//	$scope.user = angular.copy($scope.master);
	};
	$scope.saveInfo = function(){
		
		console.log("data saved successfully!!");
	}
	
});