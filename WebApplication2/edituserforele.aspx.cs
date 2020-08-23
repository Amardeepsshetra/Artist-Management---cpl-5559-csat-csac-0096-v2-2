using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
	public partial class WebForm13 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}
		protected void Button1_Click(object sender, EventArgs e)
		{
			SqlConnection sq = new SqlConnection(@"Data Source=DESKTOP-38OFP7E\SQLEXPRESS;Initial Catalog=ArtistManagement;Integrated Security=True");
			sq.Open();

			SqlCommand xp = new SqlCommand("Update Users SET Firstname=@Firstname, Lastname=@Lastname, Accesstype=@Accesstype, Department=@Department, Email=@Email, Password=@Password, Confirmpassword=@Confirmpassword, Dateofbirth=@Dateofbirth, Phnno=@Phnno, Address=@Address Where UserId=@UserId", sq);
			xp.CommandType = System.Data.CommandType.Text;
			xp.Parameters.AddWithValue("@Firstname", TextBox1.Text);
			xp.Parameters.AddWithValue("@Lastname", TextBox2.Text);
			xp.Parameters.AddWithValue("@Accesstype", TextBox3.Text);
			xp.Parameters.AddWithValue("@Department", TextBox4.Text);
			xp.Parameters.AddWithValue("@Email", TextBox5.Text);
			xp.Parameters.AddWithValue("@Password", TextBox6.Text);
			xp.Parameters.AddWithValue("@Confirmpassword", TextBox7.Text);
			xp.Parameters.AddWithValue("@Dateofbirth", TextBox8.Text);
			xp.Parameters.AddWithValue("@Phnno", TextBox9.Text);
			xp.Parameters.AddWithValue("@Address", TextBox10.Text);
			xp.Parameters.AddWithValue("@UserId", int.Parse(TextBox11.Text));


			xp.ExecuteNonQuery();


			sq.Close();
			Response.Redirect(Request.RawUrl);
		}

		protected void Button2_Click(object sender, EventArgs e)
		{
			SqlConnection sq = new SqlConnection(@"Data Source=DESKTOP-38OFP7E\SQLEXPRESS;Initial Catalog=ArtistManagement;Integrated Security=True");
			sq.Open();
			String sqlInsertQuery = "SELECT * FROM Users Where UserId = " + int.Parse(TextBox11.Text);
			SqlCommand cmd = new SqlCommand(sqlInsertQuery, sq);
			SqlDataReader dr = cmd.ExecuteReader();
			if (dr.Read())
			{
				TextBox1.Text = (dr["Firstname"].ToString());
				TextBox2.Text = (dr["Lastname"].ToString());
				TextBox3.Text = (dr["Accesstype"].ToString());
				TextBox5.Text = (dr["Email"].ToString());
				TextBox6.Text = (dr["Password"].ToString());
				TextBox7.Text = (dr["Confirmpassword"].ToString());
				TextBox8.Text = (dr["Dateofbirth"].ToString());
				TextBox9.Text = (dr["Phnno"].ToString());
				TextBox10.Text = (dr["Address"].ToString());

			}
			sq.Close();
			

		}

		protected void Button3_Click(object sender, EventArgs e)
		{
			if (!(TextBox11.Text == string.Empty))
			{


				SqlConnection sq = new SqlConnection(@"Data Source=DESKTOP-38OFP7E\SQLEXPRESS;Initial Catalog=ArtistManagement;Integrated Security=True");

				String sqlDeleteQuery = "DELETE FROM Users Where UserId = " + int.Parse(TextBox11.Text);
				SqlCommand cmd1 = new SqlCommand(sqlDeleteQuery, sq);
				SqlDataReader myReader;
				try
				{
					sq.Open();
					myReader = cmd1.ExecuteReader();
					while (myReader.Read())
					{
					}
					sq.Close();
				}
				catch (Exception ex)
				{

				}
			}
			else
			{

			}

			Response.Redirect(Request.RawUrl);
		}
	}
}