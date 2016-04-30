var app = angular.module("myTodoList", []);

app.service("todoListService", function($http, $q)
{
	var deferred = $q.defer();
	$http.get('data/data.json').then(function(response)
	{
		deferred.resolve(response);
	});

	this.getItems = function()
	{
		return deferred.promise;
	}
	
})

app.controller('todoListCtrl', function($scope, $http) {
    $http.get("data/mySqlTest.php")
    .then(function (response) {$scope.products = response.data.records;});

    $scope.addItem = function() {
		$scope.errorText = "There is no error to report. Well done!";
		if (!$scope.addMe) {return;}

		if ($scope.products.indexOf($scope.addMe) == -1) {
					$scope.products.push({Title:$scope.addMe, Completed:false});
					// TODO: AT THIS POINT WE SHOULD BE UPDATING THE DB
					$http.post("php/addnewItem.php?Title="+$scope.addMe).success(function(data){
	        // getTask();
	      });
			} else {
				$scope.errorText = "This item is already in your todo list!"
			}
		}

		$scope.markItemDone = function(Id, Completed) {
	    //if(status=='2'){status='0';}else{status='2';}
	      $http.post("php/updateItem.php?Id="+Id+"&Completed="+Completed).success(function(data){
	        // getTask();
	      });
  }
});