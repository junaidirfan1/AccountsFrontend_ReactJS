import React, { useState } from "react";
import DatePicker from "react-datepicker";
import "react-datepicker/dist/react-datepicker.css";



function Payment() {
  const [date, setDate] = useState(new Date());

  return (
    <>
      <p className=" text-left ml-7 mt-7 text-2xl text-black slashed-zero ">
        Credit Note / Payment Voucher
        <hr class="w-full h-1 mt-8  bg-black " />
      </p>

      <nav className="bg-black mt-2">
        <div className="mx-auto max-w-7xl px-2 sm:px-6 lg:px-8">
          <div className="relative flex h-16 items-center justify-between">
            <div className="absolute inset-y-0 left-0 flex items-center sm:hidden"></div>
            <label className=" flex-initial w-48... diagonal-fractions font-medium text-2xl text-white">
          Voucher
          </label>
          
          <input type="text" class="rounded-md border-0  px-2 py-1.5 pl-3 pr-20 text-gray-900 ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"/>
          
          <label className=" diagonal-fractions font-medium text-2xl  ms-12 text-white">
          Date
        </label>
        <div className="mt-3"></div>

<div className="  px-6  py-0  text-right">
  <DatePicker
    className=" border-1  border-black border-solid"
    selected={date}
    onChange={(date) => setDate(date)}
  />
</div>
          </div>
        </div>
      </nav>
       
      <div className="mx-auto max-w-8xl px-2 sm:px-5 lg:px-8">
      <p className=" text-left ml-7 mt-7 text-xl font-bold text-black  ">
        Credited To 
      <input type="text" className="rounded-md border-0  mx-3 py-1 pl-3 pr-20 text-gray-900 ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6 " placeholder="Name" required/>
      <button type="button" className="text-white bg-gradient-to-r  mx-96 from-blue-500 via-blue-600 to-blue-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-blue-300 dark:focus:ring-blue-800 shadow-lg shadow-blue-500/50 dark:shadow-lg dark:shadow-blue-800/80 font-medium rounded-lg text-sm px-5 py-2.5 text-center mr-2 mb-2 ">Add User's</button>
      </p>
      </div>


    

      <div className="relative overflow-x-auto shadow-md sm:rounded-lg m-5 p-5">
        <table className="w-full text-sm text-left text-black dark:text-black">
          <thead className="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-black dark:text-black" >
            <tr>
              <th scope="col" className="px-6 py-3">
                Account ID
              </th>
              <th scope="col" className="px-6 py-3 ">
                Date
              </th>
              
            </tr>
          </thead>
          <tbody>
            <tr className="bg-white border-b dark:bg-gray-900 dark:border-gray-700">
              <th
                scope="row"
                className="px-6 py-3 font-medium text-gray-900 whitespace-nowrap dark:text-white"
              >
                102
              </th>

              <th className="px-6 py-3  text-gray-900">Silver</th>

              
            </tr>
            <tr className="bg-white border-b dark:bg-gray-900 dark:border-gray-700">
              <th
                scope="row"
                className="px-6 py-3 font-medium text-gray-900 whitespace-nowrap dark:text-white"
              >
                101
              </th>

              <th className="px-6 py-3  text-gray-900">Silver</th>

              
            </tr>

          </tbody>
        </table>
              <th className="text-right text-black">Total</th>
      </div>
    </>
  );
}

export default Payment;
