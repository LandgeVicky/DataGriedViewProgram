using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Microsoft.Data.SqlClient;


namespace DataGriedViewProgram
{
    public partial class Index : System.Web.UI.Page
    {
        string connString = @"Data Source=.\\sqlexpress;Initial catelog=GriedView;Integrated Security=true;";
        protected void Page_Load(object sender, EventArgs e)
        {
            using(SqlConnection sqlcon = new SqlConnection(connString))
            {
                sqlcon.Open();
                SqlDataAdapter sda = new sqlDataAdapter("select * from Product", sqlcon);
                
            }
        }




    }
}