using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
	public partial class WebForm1 : System.Web.UI.Page
	{
		
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			Server.Execute("Adduser.aspx");
		}

		protected void Button3_Click(object sender, EventArgs e)
		{
			Server.Execute("editUser.aspx");
		}

		protected void btnSearchBar_Click(object sender, EventArgs e)
		{
			SqlConnection sq = new SqlConnection(@"Data Source=DESKTOP-38OFP7E\SQLEXPRESS;Initial Catalog=ArtistManagement;Integrated Security=True");
			sq.Open();
			String sqlInsertQuery = "select * from Users where Firstname like '" + txtSearch.Text + "%'";
			SqlCommand cmd = new SqlCommand(sqlInsertQuery, sq);
			SqlDataReader dr = cmd.ExecuteReader();
			if (dr.HasRows)
			{
				dr.Read();
				rep_bind();
				GridView1.Visible = true;
				txtSearch.Text = "";
				Label1.Text = "";
			}
			else
			{
				GridView1.Visible = false;
				Label1.Visible = true;
				Label1.Text = "The search Term " + txtSearch.Text + " Is Not Available in the Records";
			}



		}
		private void rep_bind()
		{
			SqlConnection sq = new SqlConnection(@"Data Source=DESKTOP-38OFP7E\SQLEXPRESS;Initial Catalog=ArtistManagement;Integrated Security=True");
			sq.Open();
			string query = "select * from Users where Firstname like '" + txtSearch.Text + "%'";
			SqlDataAdapter da = new SqlDataAdapter(query, sq);
			DataSet ds = new DataSet();
			da.Fill(ds);
			GridView1.DataSource = ds;
			GridView1.DataBind();
		}

		protected void Button2_Click(object sender, EventArgs e)
		{
			Server.Execute("View.aspx");

		}
	}
}