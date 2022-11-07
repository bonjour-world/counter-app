<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");
header("Access-Control-Allow-Methods: *");

require 'model/DAO.php';
$countsdao = new DAO(); //for communication with database


$method = $_SERVER['REQUEST_METHOD'];
switch($method) { 
    case "GET":
        $counts = $countsdao->getCurrentNumber(); //current (active) number

        if(empty($counts) || $counts['current_number']==0){ //if there is no reserved number or the active number is 0

            //set * as kind of placeholder

            $counts['current_number']="*";

        }

        echo json_encode($counts); //return json
        break;
    case "POST":

        $counts = $countsdao->getCurrentNumber();
        
        if($counts==false){ //there is no reserved number

            $counts['msg']="There are no customers waiting in line.";
            
        }else{
            if($counts['reserved_number']!=$counts['current_number']){ //reserved number is not current (active) number
                //someone is waiting in line
                $counts['current_number']++; //enhance active number
                $countsdao->updateEmployeesData($counts['current_number']); //update that value in database
                $counts = $countsdao->getCurrentNumber(); //get current active number: update $counts
                $counts['msg']="";
            }else{
                $counts['msg']="There are no customers waiting in line."; //last reserved number is also active number
            }

        }
        echo json_encode($counts); //return json
        break;

    case "PUT":
        
        $counts = $countsdao->getCurrentNumber();

        if(!empty($counts)){

        //customer wants to get number, enhance last reserved number
        //show page with current active number
        //print ticket with his number in waiting line

        $counts['reserved_number']++; 
        $countsdao->updateCustomersData($counts['reserved_number']);
        $counts = $countsdao->getCurrentNumber();

        }else{

            
        //there are no previous reserved numbers for that day
        //get current number

        $current_number=0; //default number for start
        $reserved_number=1; //now reserved number is 1
        $date=date("Y.m.d"); //set today's date
        $created=date("Y.m.d");
        $countsdao->insertCustomersData($date,$reserved_number,$current_number,$created); //insert row in database for that day
        $counts = $countsdao->getCurrentNumber();

        }

        if($counts['current_number']==0){
            $counts['current_number']="*"; //there are no active numbers yet, our first customer is waiting for employee
        }

        echo json_encode($counts);
        break;

    /*
    
    //in case we don't want to keep track of numbers in database

    case "DELETE":
        $date=date("Y.m.d");
        $countsdao->deleteCustomersData($date); //clear all rows in database for that day
        $counts = $countsdao->getCurrentNumber();

        echo json_encode($counts);
        break;*/
}