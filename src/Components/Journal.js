import React from 'react'

function Journal() {
  return (
    <div>
        <p className=" text-left ml-7 mt-7 text-2xl text-black slashed-zero ">
        Debit Note /Journal Voucher
        <hr class="w-full h-1 mt-8  bg-black " />
      </p>
      
      <table class="border-collapse border border-slate-400 ...">
  <thead>
    <tr>
      <th class="border border-slate-300 ...">State</th>
      <th class="border border-slate-300 ...">City</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td class="border border-slate-300 ...">Indiana</td>
      <td class="border border-slate-300 ...">Indianapolis</td>
    </tr>
    <tr>
      <td class="border border-slate-300 ...">Ohio</td>
      <td class="border border-slate-300 ...">Columbus</td>
    </tr>
    <tr>
      <td class="border border-slate-300 ...">Michigan</td>
      <td class="border border-slate-300 ...">Detroit</td>
    </tr>
  </tbody>
</table>
</div>
  )
}

export default Journal