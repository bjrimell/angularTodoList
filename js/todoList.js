		var app = angular.module("myTodoList", []);
			app.controller("myCtrl", function($scope, $http) {

			$http.get("/data.json").then(function(response) {
        		$scope.myData = response.data.records;});

			$scope.initialiseData = function()
			{
				$scope.products = [{todoText: "Tidy room", done:false}, {todoText: "Buy some milk", done:true}, {todoText: "Phone bank", done:false}]
			}

			$scope.initialiseData();
			
			$scope.addItem = function() {
			$scope.errorText = "There is no error to report. Well done!";
			if (!$scope.addMe) {return;}

			if ($scope.products.indexOf($scope.addMe) == -1) {
						$scope.products.push({todoText:$scope.addMe, done:false});
				} else {
					$scope.errorText = "This item is already in your todo list!"
				}
			}

			$scope.updateList = function() {
				$scope.tempList = $scope.products;
				$scope.initialiseData();
			}

	});