//stranica za prikaz broja kupca koji je trenutno na redu

import axios from "axios";
import { useEffect, useState } from "react";
import { Link } from "react-router-dom";




export default function ListNumber() {

   

    const [counts, setCounts] = useState([]);
    useEffect(() => {
        getCounts();
    }, []);

    //var ip = window.location.host;
    var ip = 'localhost:8080';
    
    function getCounts() {
        axios.get('http://'+ip+'/counter-app/api/').then(function(response) {
            console.log(response.data);
            setCounts(response.data);
        });
        setTimeout(() => getCounts(), 2000);
    }

    function getCounts() {
        axios.get('http://'+ip+'/counter-app/api/').then(function(response) {
            console.log(response.data);
            setCounts(response.data);
        });
        setTimeout(() => getCounts(), 2000);
    }



    return (
       

        <div class ="container">

            <div class="item">
                <h1></h1>
                <img src={`http://${ip}/counter-app/logo.png`} alt="logo"/>
                <h1>Current active number is:</h1>
                <h4>{counts.current_number}</h4>
            </div>
        </div>


    )
}
