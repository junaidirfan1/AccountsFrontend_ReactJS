import "./App.css";
import Navbar from "./Components/Navbar";


import Payment from "./Components/Payment";
import Journal from "./Components/Journal";
import Receipt from "./Components/Receipt";
import MasterAC from "./Components/MasterAC";

import { BrowserRouter as Router, Route, Routes, Link } from "react-router-dom";



// import Sidebar from "./Components/Sidebar";
// import Login from "./Components/Login";

function App() {
  return (
    <div className="App">
      <Router>
        <Navbar />
        {/* <Sidebar  /> */}
        <Routes>
       

          <Route exact path="/masterac" element={<MasterAC />}></Route>

          <Route exact path="/payment" element={<Payment />}></Route>

          <Route exact path="/journal" element={<Journal />}></Route>

          <Route exact path="/reciept" element={<Receipt />}></Route>
        </Routes>
      </Router>
    </div>
  );
}

export default App;
