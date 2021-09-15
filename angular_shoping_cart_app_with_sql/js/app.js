var app = angular.module("myModule",[]);
				 

app.controller("myController",function($scope,$http){


				 	$scope.loadProducts = function(){
				 		$http.get("db_scripts/load_products.php")
				 		.then(function(data){
				 			$scope.products = data['data'];
				 			// console.log(data['data']);
				 		})
				 		$http.get("db_scripts/read_cart.php",)
						 		.then(function(data){
						 			$scope.carts= data['data'];
						 		})

				 	}

				 	$scope.carts= [];

				 	$scope.add_cart = function(product){
				 		if(product){
						 		$http.post("db_scripts/add_to_cart.php",
						 		{
						 			'p_name':product.p_name,
						 			'p_image':product.p_image,
						 			'p_prize':product.p_prize,
						 		}).then(function(data){
						 			
						 		})

						 		$http.get("db_scripts/read_cart.php",)
						 		.then(function(data){
						 			$scope.carts= data['data'];
						 			location.reload();
						 		})

				 		}
				 	}

				 	$scope.total = 0;

				 	$scope.remove_cart = function(cart){
				 		
				 		$http.post("db_scripts/remove_cart_item.php",
				 					{'p_id':cart.p_id})

				 		$http.get("db_scripts/read_cart.php",)
						 		.then(function(data){
						 			location.reload();
						 			$scope.carts= data['data'];
						 		})
				 		$scope.total = parseInt($scope.total) - parseInt(cart.p_prize);
				 	}

				 	$scope.set_total = function(cart){
				 		$scope.total = parseInt($scope.total) + parseInt(cart.p_prize);
				 	}

				 });







