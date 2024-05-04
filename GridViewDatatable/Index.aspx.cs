using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GridViewDatatable
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetData();
        }

        private void GetData()
        {
            SqlConnection sqlconn = new SqlConnection(@"Data Source=.\sqlexpress;initial catalog=GriedView;Integrated Security=true;");
            SqlCommand cdm=new SqlCommand("Select * from Product",sqlconn);
            SqlDataAdapter sda = new SqlDataAdapter(cdm);

            DataTable dt = new DataTable();
            sda.Fill(dt);

            GridView1.DataSource= dt;
            GridView1.DataBind();

            GridView1.UseAccessibleHeader = true;
            GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;


        }
    }
}