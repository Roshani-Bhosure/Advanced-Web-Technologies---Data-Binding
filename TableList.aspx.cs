using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace DataBinding
{
    public partial class TableList : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-6FSF5UG\SQLEXPRESS01;Initial Catalog=FYMCA_SEM2;Integrated Security=True");
        SqlCommand cmd;
        SqlDataReader dr;
        SqlDataAdapter adapt;
        DataTable dt;
        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String q = "select * from " + DropDownList1.Text;
            cn.Open();
            adapt = new SqlDataAdapter(q, cn);
            dt = new DataTable();
            adapt.Fill(dt);
            GridView1.DataSource = dt;
            cn.Close();
            GridView1.DataBind();

        }
    }
}