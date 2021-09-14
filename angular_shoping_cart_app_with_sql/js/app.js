var app = angular.module("myModule",[]);
				 

app.controller("myController",function($scope,$http){


				 	$scope.loadProducts = function(){
				 		$http.get("db_scripts/load_products.php")
				 		.then(function(data){
				 			$scope.products = data['data'];
				 			// console.log(data['data']);
				 		})

				 	}

				 	// $scope.products = [
				 	// 			{p_name : "Sumsung Galaxy m31" , p_image:"images/1.png", p_prize:15999},
				 	// 			{p_name : "iPhone 12" , p_image:"images/2.png", p_prize:150999},
				 	// 			{p_name : "Lenovo Yoga" , p_image:"images/3.png", p_prize:80999},
				 	// 			{p_name : "MacBook Pro with M1 chip" , p_image:"images/4.png", p_prize:160999},
				 	// 			{p_name : "Sony 4k TV" , p_image:"images/5.png", p_prize:250999},
				 	// 			{p_name : "Sumsung TV" , p_image:"images/6.png", p_prize:70999},
				 	// 			{p_name : "Nokia Android 5" , p_image:"images/7.jpeg", p_prize:15999},

				 	// ];


				 	$scope.carts= [];

				 	$scope.add_cart = function(product){
				 		if(product){
						 		$http.post("db_scripts/add_to_cart.php",
						 		{
						 			'p_name':product.p_name,
						 			'p_image':product.p_image,
						 			'p_prize':product.p_prize,
						 		}).then(function(data){
						 			//console.log(data);
						 		})

						 		$http.get("db_scripts/read_cart.php",)
						 		.then(function(data){
						 			$scope.carts= data['data'];
						 			// console.log(data['data']);
						 		})

				 		}
				 	}

				 	// $scope.total = 0;

				 	// $scope.remove_cart = function(cart){
				 	// 	$scope.carts.splice($scope.carts.indexOf(cart) ,1);
				 	// 	$scope.total -= cart.p_prize;
				 	// }

				 	// $scope.set_total = function(cart){
				 	// 	$scope.total += cart.p_prize;
				 	// }

				 });