var DevOpsDemoApp = angular.module("DevOpsDemoApp.controllers", []);

DevOpsDemoApp.controller("homeController", function ($scope, $http, $location, $window, devOpsService) {
	debugger;
	$scope.user = {};
	$scope.login = function() {
		debugger;
		devOpsService.login($scope.user).then(function(response){
			debugger;
			if(response.data.isValidUser){
				$window.location.href = 'dashboard';
				//$http.get('dashboard')
			}
		})
	}
});

DevOpsDemoApp.controller("dashboardController", function($scope, $http, $location, devOpsService){
	debugger;
	
});

//Directives for custom validation

DevOpsDemoApp.directive('alphabaticCharacter', function () {
    ////debugger
    return {
        require: 'ngModel',
        link: function (scope, element, attr, mCtrl) {
            function myValidation(value) {
                ////debugger
                if (value.match(/[^a-zA-Z]/g)) {
                    mCtrl.$setValidity('alphabaticalError', false);
                } else {
                    mCtrl.$setValidity('alphabaticalError', true);
                    //mCtrl.$scope.alphaErrorMsg = "should contain only alphabets"
                    
                }
                return value;
            }
            mCtrl.$parsers.push(myValidation);
            //mCtrl.$parsers.unshift(myValidation);
        }
    };
});

DevOpsDemoApp.directive('alphaspaceCharacter', function () {
    ////debugger
    return {
        require: 'ngModel',
        link: function (scope, element, attr, mCtrl) {
            function myValidation(value) {
                ////debugger
                if (value.match(/[^\s] +/g)) {
                    mCtrl.$setValidity('nameError', false);
                    mCtrl.$setValidity('alphabaticalError', false);
                } else {
                    mCtrl.$setValidity('nameError', true);
                    mCtrl.$setValidity('alphabaticalError', false);
                    //mCtrl.$setValidity('alphabaticalError', false);
                    //mCtrl.$scope.alphaErrorMsg = "should contain only alphabets"

                }
                return value;
            }
            mCtrl.$parsers.push(myValidation);
            //mCtrl.$parsers.unshift(myValidation);
        }
    };
});