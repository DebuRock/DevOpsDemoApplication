var devOpsService = angular.module('DevOpsDemoApp.services', []);


devOpsService.factory('devOpsService', function ($http) {
	
	var devOpsDemoAPI = {}
	
	devOpsDemoAPI.login = function ($user) {
        debugger;
        return $http({
            method: "POST",
            url: "login",
            data: angular.toJson($user),
            headers : {
                'Content-Type' : 'application/json'
            }
        })
    }
	
	return devOpsDemoAPI;
	
})