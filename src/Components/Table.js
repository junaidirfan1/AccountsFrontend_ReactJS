import React from 'react'

function Table() {
    return (

        <div className="relative overflow-x-auto shadow-md sm:rounded-lg m-5 p-5">
          <table className="w-full text-sm text-left text-gray-500 dark:text-gray-400">
            <thead className="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
              <tr>
              <th scope="col" className="px-3 py-3">
                 Account ID Please
                </th>
                <th scope="col" className="px-1 ">
                 Date
                </th>
                <th scope="col" className="px-6 py-3">
                  TurnOver A/C
                </th>
                <th scope="col" className="px-3 py-3">
                  Account Name
                </th>
                <th scope="col" className="px-5 py-3">
                  Credit
                </th>
                <th scope="col" className="px-6 py-3">
                  Debit
                </th>
                <th scope="col" className="px-6 py-3">
                  Office
                </th>
                <th scope="col" className="px-6 py-3">
                  Shop
                </th>
                <th scope="col" className="px-6 py-3">
                  Factory
                </th>
                <th scope="col" className="px-4 py-3">
                  Edit
                </th>
                <th scope="col" className="px-6 py-3">
                  Delete
                </th>
              </tr>
            </thead>
            <tbody>
              
              <tr className="bg-white border-b dark:bg-gray-900 dark:border-gray-700">
                <th scope="row" className="px-3 py-3 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                  101
                </th>
                
                <td className="px-2 py-4">
                  Silver
                </td>
                

                <td className="px-6 ">
                  Laptop
                </td>
                <th scope="row" className="px-3 py-3 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                  Apple MacBook Pro 17"
                </th>
                <td className="px-6 py-4">
                  $2999
                </td>
                <td className="px-6 py-4">
                  $1999
                </td>
                <td className="px-9 py-6 ">
                <input id="bordered-checkbox-1" type="checkbox" value="" name="bordered-checkbox" className="w-4 h-4 text-blue-600 bg-gray-900 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600"/>
                </td> 
                <td className="px-9 py-6 ">
                <input id="bordered-checkbox-1" type="checkbox" value="" name="bordered-checkbox" className="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600"/>
                </td> 
                <td className="px-9 py-6 ">
                <input id="bordered-checkbox-1" type="checkbox" value="" name="bordered-checkbox" className="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600"/>
                </td> 

                <td className="px-3 py-4">
                <button type="button" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2.5 mr-2 mb-2 dark:bg-blue-600 dark:hover:bg-blue-700 focus:outline-none dark:focus:ring-blue-800">Edit</button>
                </td>
                <td className="px-3 py-4">
                <button type="button" class="text-white bg-red-700 hover:bg-red-800 focus:ring-4 focus:ring-red-300 font-medium rounded-lg text-sm px-4 py-2.5 mr-2 mb-2 dark:bg-red-600 dark:hover:bg-red-700 focus:outline-none dark:focus:ring-red-800">Delete</button>
                </td>
              </tr>
              
              <tr className="border-b bg-gray-50 dark:bg-gray-800 dark:border-gray-700">
              <th scope="row" className="px-3 py-3 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                  102
                </th>
                <td className="px-2 py-4">
                  White
                </td>
                <td className="px-6 py-4">
                  Laptop PC
                </td>
                <th scope="row" className="px-3 py-3 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                Google Pixel Phone
                </th>
                <td className="px-6 py-4">
                  $1999
                </td>
                <td className="px-6 py-4">
                  $1999
                </td>
                <td className="px-9 py-6 ">
                <input id="bordered-checkbox-1" type="checkbox" value="" name="bordered-checkbox" className="w-4 h-4 text-blue-600 bg-gray-900 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600"/>
                </td> 
                <td className="px-9 py-6 ">
                <input id="bordered-checkbox-1" type="checkbox" value="" name="bordered-checkbox" className="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600"/>
                </td> 
                <td className="px-9 py-6 ">
                <input id="bordered-checkbox-1" type="checkbox" value="" name="bordered-checkbox" className="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600"/>
                </td> 
                <td className="px-3 py-4">
                <button type="button" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2.5 mr-2 mb-2 dark:bg-blue-600 dark:hover:bg-blue-700 focus:outline-none dark:focus:ring-blue-800">Edit</button>
                </td>
                <td className="px-3 py-4">
                <button type="button" class="text-white bg-red-700 hover:bg-red-800 focus:ring-4 focus:ring-red-300 font-medium rounded-lg text-sm px-4 py-2.5 mr-2 mb-2 dark:bg-red-600 dark:hover:bg-red-700 focus:outline-none dark:focus:ring-red-800">Delete</button>
                </td>
              </tr>
              <tr className="bg-white border-b dark:bg-gray-900 dark:border-gray-700">
              <th scope="row" className="px-3 py-3 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                  103
                </th>
                <td className="px-2 py-4">
                  Black
                </td>
                <td className="px-6 py-4">
                  Accessories
                </td>
                <th scope="row" className="px-3 py-3 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                Microsoft Surface Pro
                </th>
                <td className="px-6 py-4">
                  $1999
                </td>
                <td className="px-6 py-4">
                  $1999
                </td>
                <td className="px-9 py-6 ">
                <input id="bordered-checkbox-1" type="checkbox" value="" name="bordered-checkbox" className="w-4 h-4 text-blue-600 bg-gray-900 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600"/>
                </td> 
                <td className="px-9 py-6 ">
                <input id="bordered-checkbox-1" type="checkbox" value="" name="bordered-checkbox" className="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600"/>
                </td> 
                <td className="px-9 py-6 ">
                <input id="bordered-checkbox-1" type="checkbox" value="" name="bordered-checkbox" className="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600"/>
                </td> 
                <td className="px-3 py-4">
                <button type="button" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2.5 mr-2 mb-2 dark:bg-blue-600 dark:hover:bg-blue-700 focus:outline-none dark:focus:ring-blue-800">Edit</button>
                </td>
                <td className="px-3 py-4">
                <button type="button" class="text-white bg-red-700 hover:bg-red-800 focus:ring-4 focus:ring-red-300 font-medium rounded-lg text-sm px-4 py-2.5 mr-2 mb-2 dark:bg-red-600 dark:hover:bg-red-700 focus:outline-none dark:focus:ring-red-800">Delete</button>
                </td>
              </tr>
              <tr className="border-b bg-gray-50 dark:bg-gray-800 dark:border-gray-700">
              <th scope="row" className="px-3 py-3 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                  104
                </th>
                <td className="px-2 py-4">
                  Gray
                </td>
                <td className="px-6 py-4">
                  Phone
                </td>
                <th scope="row" className="px-3 py-3 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                Magic Mouse 2
                </th>
                <td className="px-6 py-4">
                  $799
                </td>
                <td className="px-6 py-4">
                  $1999
                </td>
               
                <td className="px-9 py-6 ">
                <input id="bordered-checkbox-1" type="checkbox" value="" name="bordered-checkbox" className="w-4 h-4 text-blue-600 bg-gray-900 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600"/>
                </td> 
                <td className="px-9 py-6 ">
                <input id="bordered-checkbox-1" type="checkbox" value="" name="bordered-checkbox" className="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600"/>
                </td> 
                <td className="px-9 py-6 ">
                <input id="bordered-checkbox-1" type="checkbox" value="" name="bordered-checkbox" className="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600"/>
                </td> 
                <td className="px-3 py-4">
                <button type="button" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2.5 mr-2 mb-2 dark:bg-blue-600 dark:hover:bg-blue-700 focus:outline-none dark:focus:ring-blue-800">Edit</button>
                </td>
                <td className="px-3 py-4">
                <button type="button" class="text-white bg-red-700 hover:bg-red-800 focus:ring-4 focus:ring-red-300 font-medium rounded-lg text-sm px-4 py-2.5 mr-2 mb-2 dark:bg-red-600 dark:hover:bg-red-700 focus:outline-none dark:focus:ring-red-800">Delete</button>
                </td>
              </tr>
              <tr>
              <th scope="row" className="px-3 py-3 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                  105
                </th>
                <td className="px-2 py-4">
                  Red
                </td>
                <td className="px-6 py-4">
                  Wearables
                </td>
                <th scope="row" className="px-3 py-3 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                Apple Watch 5
                </th>
                <td className="px-6 py-4">
                  $1999
                </td>
                <td className="px-6 py-4">
                  $1999
                </td>
                <td className="px-9 py-6 ">
                <input id="bordered-checkbox-1" type="checkbox" value="" name="bordered-checkbox" className="w-4 h-4 text-blue-600 bg-gray-900 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600"/>
                </td> 
                <td className="px-9 py-6 ">
                <input id="bordered-checkbox-1" type="checkbox" value="" name="bordered-checkbox" className="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600"/>
                </td> 
                <td className="px-9 py-6 ">
                <input id="bordered-checkbox-1" type="checkbox" value="" name="bordered-checkbox" className="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600"/>
                </td> 
                <td className="px-3 py-4">
                <button type="button" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2.5 mr-2 mb-2 dark:bg-blue-600 dark:hover:bg-blue-700 focus:outline-none dark:focus:ring-blue-800">Edit</button>
                </td>
                <td className="px-3 py-4">
                <button type="button" class="text-white bg-red-700 hover:bg-red-800 focus:ring-4 focus:ring-red-300 font-medium rounded-lg text-sm px-4 py-2.5 mr-2 mb-2 dark:bg-red-600 dark:hover:bg-red-700 focus:outline-none dark:focus:ring-red-800">Delete</button>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      );
    };

export default Table