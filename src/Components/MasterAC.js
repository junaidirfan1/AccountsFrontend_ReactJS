import axios from "axios";
import { useEffect, useState } from "react";
function MasterAC() {
const [id, setId] = useState("");
const [MastrAccount, setMastrAccount] = useState("");
const [Fid, setFid] = useState("");
const [Status, setStatus] = useState("");
const [FixedAccount, setFixedAccount] = useState("");
const [MasterAccount, setMasterAccount]= useState([]);

 
  useEffect(() => {
    (async () => await Load())();
  }, []);
 
  async function Load() {
    
    const res = await axios.get("https://localhost:44381/MasterAC/GetAllMasterAC");
     setMasterAccount(res.data);
      
    
  }
 
  async function save(event) {
   
    event.preventDefault();
    try {
      await axios.post("https://localhost:44381/MasterAC/SaveMasterAc", {
      
      MastrAccount: MastrAccount,
      Status: Status,
      
      FixedAccount: FixedAccount,
      });
      alert(" Registation Successfully");
          setId("");
          setMastrAccount("");
          setFid("");
          setStatus("");
          setFixedAccount("");
        
       
     
      Load();
    } catch (err) {
      alert(err);
    }
  }
  async function edit(data) {
    setMastrAccount(data.MastrAccount);
     setFixedAccount(data.Fid);
    setStatus(data.Status);
    setId(data.id);
    
    // setFixedAccount(data.FixedAccount);
  }
 
  async function Delete(id) {
  await axios.delete("https://localhost:44381/MasterAC/DeleteMasterAc/" +id);
   alert(" deleted Successfully");
   setId("");
   setMastrAccount("");
   setFid("");
   setStatus("");

   setFixedAccount("");
   Load();
  }
 
  async function update(event) {
    event.preventDefault();
    try {
  await axios.patch("https://localhost:44381/MasterAC/MasterACUpdate/"+ MasterAccount.find((u) => u.id === id).id || id,
        {
          id:id,
        MastrAccount: MastrAccount,
        Status: Status,
         FixedAccount:FixedAccount,
        }
      );
      alert("Account Detail Update");
      setId("");
      setMastrAccount("");
      setFixedAccount("");
      setStatus("");
      setFid("");
      Load();
    } catch (err) {
      alert(err);
    }
  }
    return (
      <div>
        <h1 className="d-flex justify-content-center m-3">TURN OVER ACCOUNT</h1>
      <div class="container mt-4">
        <form>
          <div class="form-group">
           
            <input
              type="text"
              class="form-control"
              id="id"
              hidden
              value={id}
              onChange={(event) => {
                setId(event.target.value);
              }}
            />
            <label>TurnOver Account</label>
            <input
              type="text"
              class="form-control"
              id="MastrAccount"
              value={MastrAccount}
              onChange={(event) => {
                setMastrAccount(event.target.value);
              }}
            />
          </div>
                                      
         <div className="form-group mb-3">
                        <label htmlFor="title">Category Account</label>
                        <select className="form-control" value= {FixedAccount}  onChange={(event) => { setFixedAccount(event.target.value); }}>
                            { <option value={0}>--Select Account Type</option> }
                            {
                                MasterAccount.map(data => {
                                    return (
                                        <option value={data.Fid} key={data.Fid}>{data.FixedAccount}</option>
                                    )
                                })
                            }
                        </select>
                    </div>    

          <div class="form-group">
            <label>Status</label>
            <input
              type="text"
              class="form-control"
              id="Status"
              value={Status}
              onChange={(event) => {
                setStatus(event.target.value);
              }}
            />
          </div>
          <div>
            <button class="btn btn-primary mt-4" onClick={save}>
              Register
            </button>
            <button class="btn btn-warning mt-4" onClick={update}>
              Update
            </button>
          </div>
        </form>
      </div>
      <br></br>
      <table class="table table-dark" align="center">
        <thead>
          <tr>
            {/* <th scope="col">Id</th> */}
            <th scope="col">TurnOver Account</th>
            <th scope="col">Category Account</th>
            <th scope="col">Status</th>
            
 
            <th scope="col">Option</th>
          </tr>
        </thead>
        
           
        {MasterAccount.map((data)=> {
          return (
            <tbody>
              <tr>
                <th scope="row"> {data.MastrAccount}</th>
                {/* <td>{data.MastrAccount}</td> */}
                <td>{data.FixedAccount}</td>
                <td>{data.Status}</td>
                <td>
                  <button
                    type="button"
                    class="btn btn-warning"
                    onClick={() => edit(data)}
                  >
                    Edit
                  </button>
                  <button
                    type="button"
                    class="btn btn-danger"
                    onClick={() => Delete(data.id)}
                  >
                    Delete
                  </button>
                </td>
              </tr>
            </tbody>
      );
    })}
  </table>
    
  </div>
);
  } 
  export default MasterAC;