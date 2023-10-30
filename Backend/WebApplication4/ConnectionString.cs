using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace WebApplication4
{
    public static class ConnectionString
    {
        public static SqlConnection mySqlConnection;

        public static SqlConnection GetConnection()
        {
            if (mySqlConnection == null || mySqlConnection.State == System.Data.ConnectionState.Closed)
            {
                mySqlConnection = new SqlConnection();
                mySqlConnection.ConnectionString = @"Data Source=.;Initial Catalog=AccountsSystem;Integrated Security=True";
                mySqlConnection.Open();
            }
            return mySqlConnection;
        }
    }
}
    