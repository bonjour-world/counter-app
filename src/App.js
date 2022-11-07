import {BrowserRouter, Routes, Route, Link} from 'react-router-dom';
import './App.css';
import ListNumber from './components/ListNumber';
import GetNumber from './components/GetNumber';
import ActivateNumber from './components/ActivateNumber';


import React, { useState, useEffect } from "react";




function App() {
  
var amountOfClicks = 0;

function secretAction(){
  //when IT support clicks five times in a row on field under nav links, app is out of kiosk mode 
  amountOfClicks++;
  if(amountOfClicks == 5){
    window.close();
    resetClicks();
  }else{
    setTimeout(() => resetClicks(), 5000);
  }
  };

  function resetClicks(){
  amountOfClicks = 0;
};

//nav is just for testing, later will be removed

return (
    <div className="App"> 
      <BrowserRouter>

      <nav>
          <ul>
            <li>
              <Link to="/counter-app">Current number</Link>
            </li>
            <li>
              <Link to="/counter-app/get">Get your number</Link>
            </li>
            <li>
              <Link to="/counter-app/activate">Activate number</Link>
            </li>
          </ul>
          <div id="invisible" onClick={()=>secretAction()}></div>
        </nav>
       
        <Routes>
        
          <Route index element={<ListNumber />} />
          
          <Route path="/counter-app" element={<ListNumber />} />
          <Route path="/counter-app/get" element={<GetNumber />} />
          <Route path="/counter-app/activate" element={<ActivateNumber />} />
        </Routes>
      </BrowserRouter>
    </div>
    
  );
}

export default App;
