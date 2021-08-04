<?php

class Queue {
    
    function __construct() {
        
    }
    
    function analizeMessage($params){
        $error = false;
        $msj = "Everything ok";
        if($params["message"]!=""){
            $pos = strpos($params["message"], 'b');
            if ($pos === false) {
                 $pos = strpos($params["message"], 'c');
                if ($pos === false) {
                    $pos = strpos($params["message"], 'd');
                    if ($pos === false) {
                         $pos = strpos($params["message"], 't');
                        if ($pos === false) {
                            $time= rand(5,10);
                            sleep($time);
                            
                            $ch = curl_init();
                            curl_setopt($ch, CURLOPT_URL, "http://localhost:3000/api/posts/");
                            curl_setopt($ch, CURLOPT_VERBOSE, 1);
                            curl_setopt($ch, CURLOPT_HTTPHEADER,array('Content-type: application/x-www-form-urlencoded; charset=UTF-8'));
                            curl_setopt($ch, CURLOPT_HEADER, false);
                            curl_setopt($ch, CURLOPT_TIMEOUT, 30);
                            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                            curl_setopt($ch, CURLOPT_POST, 1);
                            $message ='message='.urlencode($params["message"]);
                            curl_setopt($ch, CURLOPT_POSTFIELDS, $message);
                                $httpResponse = curl_exec($ch);
                                
                                if(curl_getinfo($ch, CURLINFO_HTTP_CODE) === 200){
                                if (strstr($httpResponse,"ERROR errNum")){
                                     $msj = ("Error saving message : ".$httpResponse);
                                     $error  = true;
                                }else{
                                   $array = json_decode($httpResponse,false);
                                  
                                   $id = $array->id;
                                   $msj=$id;
                                }
                                }else{
                                     $msj = ("Error saving message: ".curl_error($ch).'('.curl_errno($ch).')'.$httpResponse);
                                     $error  = true;
                                }
                                curl_close($ch);
                        }else{
                              $error = true;    
                              $msj = "The message could not content letter t";
                        }
                    }else{
                          $error = true;    
                          $msj = "The message could not content letter d";
                    }
                }else{
                      $error = true;    
                      $msj = "The message could not content letter c";
                }
            }else{
                  $error = true;    
                  $msj = "The message could not content letter b";
            }
        }else{
             $error = true;
        }
        
        if(!$error){
            echo json_encode(array("status"=>"success","msj"=>$msj));
        }else{
            echo json_encode(array("status"=>"error","msj"=>$msj));
        }
    }
    
   
    
}

$Queue = new Queue();
$params = $_POST;
$Queue->analizeMessage($params);
