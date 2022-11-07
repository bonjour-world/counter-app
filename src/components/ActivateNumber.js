

//mesarkina stranica

import axios from "axios";
import { useEffect, useState } from "react";
import { Link } from "react-router-dom";



export default function ActivateNumber() {
    

    const [counts, setCounts] = useState([]);
    useEffect(() => {
        getCounts();
    }, []);

    //var ip = window.location.host;
    var ip = 'localhost:8080';

    var printNumber = false;

    function getCounts() { //get current active number
        axios.get('http://'+ip+'/counter-app/api/').then(function(response) { //get method -> api
            console.log(response.data);
            setCounts(response.data);
        });
        setTimeout(() => getCounts(), 2000); //after 2 seconds repeat function -> socket would be nice for this in future
    }

   
    function activateNumber(){ 
        
        //activate next number in waiting line (employee)
        axios.post('http://'+ip+'/counter-app/api/').then(function(response) { //post method -> api
            console.log(response.data);
            setCounts(response.data);  
        });

        //prevent user from clicking in next 4 seconds to prevent multiple clicks by mistake
        document.getElementById("clickarea").style.pointerEvents="none";
        setTimeout(() => {document.getElementById("clickarea").style.pointerEvents="auto";}, 4000);
        
    }

    
    return (
        

        <div class ="container">

        <div class="item" id="borderinclude">
            <h1></h1>
            <img src={`http://${ip}/counter-app/logo.png`} alt="logo"/>
            <h1>Current active number is:</h1><h3>{counts.current_number}</h3>
        </div>
        <div class="item" id="clickarea" onClick={() => activateNumber()} > 
        <h1 id="click">Next customer</h1><h2>{counts.msg}</h2>
        </div>

        </div>

    )
}
