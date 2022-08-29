using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Assiginment1Job
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string conStr = @"Data Source=DESKTOP-89TMV54\SQLEXPRESS;Initial Catalog=AspNetProject1;Persist Security Info=True;User ID=sa;Password=abdul95@uet";


            string query = "select * from country";
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            sda.SelectCommand.ExecuteNonQuery();
            DataTable dt = new DataTable();
            sda.Fill(dt);
            countryGrid.DataSource = dt;
            countryGrid.DataBind();
            
        }

        protected void countryGrid_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string conStr = @"Data Source=DESKTOP-89TMV54\SQLEXPRESS;Initial Catalog=AspNetProject1;Persist Security Info=True;User ID=sa;Password=abdul95@uet";


                GridView gv = (GridView)e.Row.FindControl("cityGrid");
                int countryId = Convert.ToInt32(e.Row.Cells[1].Text);

                string query = "select * from city where countryId="+countryId;
                SqlConnection con = new SqlConnection(conStr);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(query, con);
                sda.SelectCommand.ExecuteNonQuery();
                DataTable dt = new DataTable();
                sda.Fill(dt);
                gv.DataSource = dt;
                gv.DataBind();

            }

        }
    }
}