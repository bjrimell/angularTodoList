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

app.controller("myCtrl", function($scope, todoListService) {

	var promise = todoListService.getItems();
	promise.then(function(response)
	{
		$scope.products = response.data.TodoListData;
	});

$scope.addItem = function() {
$scope.errorText = "There is no error to report. Well done!";
if (!$scope.addMe) {return;}

if ($scope.products.indexOf($scope.addMe) == -1) {
			$scope.products.push({Title:$scope.addMe, Completed:false});
	} else {
		$scope.errorText = "This item is already in your todo list!"
	}
}

});