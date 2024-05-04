using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace GriedView
{
    public partial class Index : System.Web.UI.Page
    {
        string sqlconn = @"Data Source=.\\sqlexpress;Initial catelog=GriedView;Integrated Security=true;";
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection sqlcon = new SqlConnection(sqlconn))
            {
                SqlDataAdapter sqldata = new SqlDataAdapter("select * from Product", sqlconn);
                DataTable dtbl = new DataTable();
                sqldata.Fill(dtbl);

                griedview1.DataSource = dtbl;
                griedview1.DataBind();




            }
        }

        protected void lnkbtn_Click(object sender, EventArgs e)
        {
            int ProductId=Convert.ToInt32((sender as LinkButton).CommandArgument);


        }
    }
}