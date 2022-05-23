using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace BTLWEB
{
    public partial class Homeaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getAllDate();
        }

        private void getAllDate()
        {
            SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-376TPM23\HIHUYEN;Initial Catalog=BTLWEB;Integrated Security=True");
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Luat", conn);
            DataSet ds = new DataSet();
            da.Fill(ds, "Luat");

            GridView1.DataSource = ds.Tables["Luat"];
            GridView1.DataBind();
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            Response.Write(btn.CommandArgument.ToString());
        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            Response.Write(btn.CommandArgument.ToString());
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddOrEdit.aspx");
        }
    }
}