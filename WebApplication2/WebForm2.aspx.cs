using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication2
{
	public partial class WebForm2 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			SqlConnection sq = new SqlConnection("Data Source=DESKTOP-38OFP7E\\SQLEXPRESS;Initial Catalog=ArtistManagement; Integrated Security=True");

			{
				SqlCommand xp = new SqlCommand("Insert into Users(UserId, Firstname, Lastname, Accesstype, Department, Email, Password, Confirmpassword, Dateofbirth, Phnno, Address) Values(@UserId, @Firstname, @Lastname, @Accesstype, @Department, @Email, @Password, @Confirmpassword, @Dateofbirth, @Phnno, @Address)", sq);
				xp.Parameters.AddWithValue("@UserId", TextBox11.Text);
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

				sq.Open();
				xp.ExecuteNonQuery();
				sq.Close();
			}
		}
	}
}