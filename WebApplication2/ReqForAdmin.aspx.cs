using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace WebApplication2
{
	public partial class WebForm4 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{


		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			SqlConnection sq = new SqlConnection(@"Data Source=DESKTOP-38OFP7E\SQLEXPRESS;Initial Catalog=ArtistManagement;Integrated Security=True");
			sq.Open();
			String sqlInsertQuery = "Update Users SET Accesstype = 'Elevated Access User' Where UserId= " + int.Parse(TextBox1.Text) ;
			SqlCommand cmd = new SqlCommand(sqlInsertQuery, sq);
			String sqlInsertQuery1 = "Update RequestAccess SET Status = 'Approved' Where Userid= " + int.Parse(TextBox1.Text);
			SqlCommand cmd1 = new SqlCommand(sqlInsertQuery1, sq);
			cmd.ExecuteNonQuery();
			cmd1.ExecuteNonQuery();




			sq.Close();
		}

		protected void Button2_Click(object sender, EventArgs e)
		{
			SqlConnection sq = new SqlConnection(@"Data Source=DESKTOP-38OFP7E\SQLEXPRESS;Initial Catalog=ArtistManagement;Integrated Security=True");
			sq.Open();
			String sqlInsertQuery = "Update Users SET Accesstype = 'Regular User' Where UserId= " + int.Parse(TextBox1.Text) ;
			SqlCommand cmd = new SqlCommand(sqlInsertQuery, sq);
			String sqlInsertQuery1 = "Update RequestAccess SET Status = 'Declined' Where Userid= " + int.Parse(TextBox1.Text);
			SqlCommand cmd1 = new SqlCommand(sqlInsertQuery1, sq);
			

			cmd.ExecuteNonQuery();
			cmd1.ExecuteNonQuery();

			sq.Close();
		}
	}
}