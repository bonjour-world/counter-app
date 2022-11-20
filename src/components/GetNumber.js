import axios from "axios";
import { useEffect, useState } from "react";
import {  Link } from "react-router-dom";


export default function GetNumber() {
    
      //functions for (default) ticket printer
      /*function setPrint () {
        this.contentWindow.__container__ = this;
        this.contentWindow.onbeforeunload = closePrint;
        this.contentWindow.onafterprint = closePrint;
        this.contentWindow.focus(); // Required for IE
        this.contentWindow.print();
      }

      function closePrint () {
        document.body.removeChild(this.__container__);
      }
      
      function printPage (sURL) {
        var oHiddFrame = document.createElement("iframe");
        oHiddFrame.onload = setPrint;
        oHiddFrame.style.visibility = "hidden";
        oHiddFrame.style.position = "fixed";
        oHiddFrame.style.right = "0";
        oHiddFrame.style.bottom = "0";
        oHiddFrame.src = sURL;
        document.body.appendChild(oHiddFrame);
      }*/

    const [counts, setCounts] = useState([]);
    useEffect(() => {
        getCounts();
    }, []);

    //var printNumber = false;

    //var ip = window.location.host;
    var ip = 'localhost:8080';

    function getCounts() {//get current active number
        axios.get('http://'+ip+'/counter-app/api/').then(function(response) {
            console.log(response.data);
            setCounts(response.data);
        });
        setTimeout(() => getCounts(), 2000);
    }


    function reserveNumber(){ //customer gets it's number in the waiting line
            axios.put('http://'+ip+'/counter-app/api/').then(function(response) {
            console.log(response.data);
            setCounts(response.data);
            //var url='http://'+ip+'/counter-app/printdoc.php?num='+response.data.reserved_number;
            //function for printing when we have default printer connected
            //printPage(url);
            });

            document.getElementById("clickarea").style.pointerEvents="none";
            document.getElementById("click").style.display="none";
            document.getElementById("takenumber").style.display="inline-block";
            setTimeout(() => {
              document.getElementById("takenumber").style.display="none";
              document.getElementById("click").style.display="inline-block";
              document.getElementById("clickarea").style.pointerEvents="auto";
            }, 4000);
    }

    
    return (
    

<div class ="container">

  <div class="item" id="borderinclude">
    <h1></h1>
    <img src={`http://${ip}/counter-app/logo.png`} alt="logo"/><h1>Current active number is:</h1>
    <h3>{counts.current_number}</h3>
  </div>
  <div class="item"  id="clickarea" onClick={() => reserveNumber()} >
    <h1 id="click">Click for number</h1>
    <h1 id="takenumber">Please take your number.Thank you!</h1>
  </div>

</div>

    )
}
