using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace tp1
{
    public partial class user1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindGrid();
            }
        }

        public void bindGrid()
        {
            SqlConnection con = new SqlConnection("Data Source=SWAMI-PC\\SQLEXPRESS;Initial Catalog=UserInfo;Integrated Security=true");
            SqlDataAdapter adap = new SqlDataAdapter("Select * from user2", con);
            DataTable dt = new DataTable();
            adap.Fill(dt);
            con.Open();
            gv.DataSource = dt;
            con.Close();
            gv.DataBind();



            /*DataTable dt = new DataTable();

            dt.Columns.Add("SNO");

            dt.Columns.Add("Department");

            dt.Columns.Add("EmpName");

            dt.Columns.Add("EmpNo");

            dt.Columns.Add("Location");

            dt.Columns.Add("Designation");*/

            for (int i = 0; i < 10; i++)
            {

                DataRow dr = dt.NewRow();

                dr["u_id"] = i;

                dr["name"] = "name-" + i;

                dr["email"] = "email-" + i;

                dr["pass"] = "pass" + i;

                dr["mobile"] = "mobile-" + i;

                dr["gender"] = "gender-" + i;

                dr["age"] = "age-" + i;

                dr["address"] = "address-" + i;

                dt.Rows.Add(dr);

                dt.AcceptChanges();

            }
        }

        protected void gv_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


    }
}