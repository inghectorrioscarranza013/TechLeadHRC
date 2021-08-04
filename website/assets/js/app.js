var app = angular.module('testApp',[]);

app.controller('funciones',function($scope,$http){
     $scope.mensaje="";
     $scope.numeros = [0,1,2,3,4,5,6,7,8,9,0];
     $scope.status = "error";
     $scope.id = "";
     $scope.validarMensaje = function(){
        var success = true;
        if($scope.mensaje!=""){
            if($scope.mensaje.length<=20){
              for(i=0;i<$scope.numeros.length;i++){
               if($scope.mensaje.indexOf($scope.numeros[i]) != -1){
                   success = false;
               }   
              }
              
              
              if(success){
                  
                  $http({
            method: 'POST',
            url: 'http://localhost/testHRC/assets/php/Queue.php',
            data: "message=" + $scope.mensaje,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
            }).then(
                        function successCallback(response) {
                            $scope.status = response.data.status;
                            $scope.id = response.data.msj;
                            if($scope.status=="success"){
                                 $scope.id = response.data.msj;
                                  alert("Your message was saved with the id "+$scope.id);
                                  $http({
                                        method: 'GET',
                                        url: 'http://localhost:3000/api/posts/select'
                                       }).then(function successCallback(response) {
                                         var txt = ""
                                           $.each(response.data,function(index,element){
                                               txt+="<tr>";
                                               txt+="<td>"+element.id+"</td>";
                                               txt+="<td>"+element.message+"</td>";
                                               txt+="<td>"+element.createdAt+"</td>";
                                               txt+="</tr>";
                                           });
                                          $("#tabla tbody").html(txt);
                                        }, function errorCallback(response) {
                                           console.log("error"+response);
                                        }); 
                                          $scope.mensaje="";
                                        
                                        
                            }else{
                                alert("There was an error saving your message, code:"+$scope.id);
                            }
                        }, function errorCallback(response) {
                         console.log("error"+response);
                        });  
              
              }else{
                   alert("The message could not have numbers");
                    $scope.mensaje="";
              }
              
        }else{
            alert("The message could be maximum 20 characters");
            $scope.mensaje="";
        }
        }else{
            alert("The message could not be empty");
        }
     }; 
     
  
    
    
     
});

app.controller('funcionesTabla',function($scope,$http){
   
  
    
   $scope.llenarTabla = function (){
   $http({
    method: 'GET',
    url: 'http://localhost:3000/api/posts/select'
   }).then(function successCallback(response) {
     var txt = ""
       $.each(response.data,function(index,element){
           txt+="<tr>";
           txt+="<td>"+element.id+"</td>";
           txt+="<td>"+element.message+"</td>";
           txt+="<td>"+element.createdAt+"</td>";
           txt+="</tr>";
       });
      $("#tabla tbody").html(txt);
    }, function errorCallback(response) {
       console.log("error"+response);
    }); 
   
   }
   
   $scope.llenarTabla();
   
   
});

app.controller('instrucciones',function(){
    this.texto = 'Create a very simple system that will consist of 3 parts: a client to send and display information, a queue to process the information and an API that will do some logic and use a database to persist information. ';
});

