using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
	public partial class WebForm8 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			SqlConnection sq = new SqlConnection(@"Data Source=DESKTOP-38OFP7E\SQLEXPRESS;Initial Catalog=ArtistManagement;Integrated Security=True");
			sq.Open();
			String sqlInsertQuery = "SELECT Accesstype FROM Users Where Email='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";
			SqlCommand cmd = new SqlCommand(sqlInsertQuery, sq);
			SqlDataReader dr = cmd.ExecuteReader();
			String otpt = "";
			if (dr.Read())
			{
				otpt = (dr["Accesstype"].ToString());
				
			}

			if (otpt.Equals("Regular User"))
			{
				Server.Execute("WelForReg.aspx");
			}
			else if (otpt.Equals("Administrator"))
			{
				Server.Execute("WelForAdmin.aspx");
			}
			else if (otpt.Equals("Elevated Access User"))
			{
				Server.Execute("WelForEle.aspx");
			}



			else
			{
			
				Response.Write("Incorrect Username / Password");
			}


			sq.Close();

		}
	}
}