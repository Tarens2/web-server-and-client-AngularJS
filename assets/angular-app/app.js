var app = angular.module('teamApp',['ngRoute','slick'])
	.config(['$routeProvider', '$locationProvider',
		function($routeProvider, $locationProvider){
		    $routeProvider.when('/home',
		    {
		        templateUrl:'assets/angular-app/templates/home.tmp.html',
		        controller:'contentController',
		        controllerAs:'content'

		    });
		    $routeProvider.when('/ask',
		    {
		        templateUrl:'assets/angular-app/templates/ask.tmp.html',
		        controller:'askController',
		        controllerAs:"ask"
		    });
		    $routeProvider.when('/member/:memberId',
		    {
		        templateUrl:'assets/angular-app/templates/member.tmp.html',
		        controller:'teamController',
		        controllerAs:"team"
		    });

		    
		    $routeProvider.otherwise({redirectTo: '/home'});
		    //$locationProvider.html5Mode(true);
		}]);  

app.controller("contentController", function($scope,$http){	 
	$http.get("assets/php/getContent.php").then(
		function(res){
			$scope.services = res.data[0];
			$scope.works = res.data[1];
			$scope.projects = res.data[2];
			$scope.read = res.data[3];
			$scope.team = res.data[4]

		}    
	);
});


app.controller("serviceController", function($scope,$http){	 
	$http.get("assets/json/all.json").then(
		function(res){
			
			$scope.serviceItems = res.data.services.serviceItems;			
		}    
	);
});

app.controller("projectController", function($scope,$http){	
	var activeDevice = "mac";
	
	this.isActive = function($event, device){
		return activeDevice == device;
	}
	this.changeDevice = function($event, device){
		activeDevice = device;
		
		//все кнопки в прозрачный
		$(".device-button").css({"opacity":"0.5"});
		//а потом одну выбранную не прозрачную
		$("."+angular.element($event.target)[0].classList[0]+"."+angular.element($event.target)[0].classList[1]).css({"opacity":"1"});
		
	}
	var activeDevice = "mac";
	$http.get("assets/json/all.json").then(
		function(res){			
			$scope.devices = res.data.project.devices;
		}    
	);
	
});

app.controller("readController", function($scope,$http){	
	$http.get("assets/php/getMInd.php").then(
		function(res){			
			$scope.minds = res.data;
			console.log(res.data);
		}    
	);
	
});
app.controller("teamController",['$scope','$http','$routeParams','$location', 
	function($scope,$http,$routeParams,$location){	
		this.allMembers = [];
		$scope.current = null;
		$http.get("lumen/public/api/members").then(
			function(res){/*
				$scope.headline = res.data.team.headline;
				$scope.small = res.data.team.small;
				$scope.text = res.data.team.text;
				this.allMembers = res.data.team.members;
				$scope.members1 = res.data.team.members.slice(0,3);
				$scope.members2 = res.data.team.members.slice(3,6);
				$scope.members3 = res.data.team.members.slice(6,8);	
				
				$scope.headline = res.data.headline;
				$scope.small = res.data.small;
				$scope.text = res.data.text;*/
				this.allMembers = res.data;
				$scope.members1 = res.data.slice(0,3);
				$scope.members2 = res.data.slice(3,6);
				$scope.members3 = res.data.slice(6,8);	
				$scope.param = $routeParams.memberId;				
				if($location.path().indexOf("/member") == 0){
					if(this.allMembers)	{
						this.allMembers.forEach(function(item){					
							if(item.id ==  $scope.param){
								$scope.current = item;
							}
						});
					}
					console.log("location is changed!", $location.path());
				}					
			}    
		);		
		//$scope.param = $routeParams.memberId;
}]);


app.controller("sliderController", function($scope,$http){	
	
	$http.get("assets/json/all.json").then(
		function(res){
			$scope.slider = res.data.slider;			
		}    
	);
	
});

app.controller("footerController", function($scope,$http){	
	
	$http.get("assets/php/getFooter.php").then(
		function(res){
			console.log(res.data);
			$scope.footer = res.data;			
		}    
	);
	
});

app.directive("startProject",function(){
	return {
		restrict: 'E',
    	templateUrl: 'assets/angular-app/templates/project.tmp.html',
    	controller:function(){
    		this.newProject = {};
    		this.hide = true;
    		this.showForm = function(){
    			this.hide = false;
    		};
    		this.addNewProject = function(newProj){
    			//sending
    			console.log(this.newProject);
    			alert(this.newProject.name+", Messege is send!");
    			this.hide = true;
    			this.newProject = {};
    		}
    	},
    	controllerAs:"start"
	};
});

app.controller("askController", function($scope,$http){	
	this.question = "";
	$http.get("assets/json/all.json").then(
		function(res){
						
		}    
	);
	this.addQuestion = function(){
		console.log(this.question);
	}
});