/**
 * 
 */
myData.controller("textAreaController",function($scope){
	$scope.message="type your text";
	$scope.save = function(){
		alert("data for saving");
	}
	$scope.clear = function(){
		$scope.message = "";
	}
	$scope.left = function(){
		return 50 - $scope.message.length;
	}
})