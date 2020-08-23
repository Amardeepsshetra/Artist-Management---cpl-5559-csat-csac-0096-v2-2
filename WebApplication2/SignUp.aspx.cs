using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
	public partial class SignUp : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			ExampleCaptcha.UserInputID = txtCaptcha.ClientID;

			if (IsPostBack)
			{
				// clear previous user input
				txtCaptcha.Text = null;
				Page.Validate();
				if (Page.IsValid)
				{
					ValidationPassedLabel.Visible = true;
				}
				else
				{
					ValidationPassedLabel.Visible = false;
				}
			}


		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			SqlConnection sq = new SqlConnection("Data Source=DESKTOP-38OFP7E\\SQLEXPRESS;Initial Catalog=ArtistManagement; Integrated Security=True");

			{
				SqlCommand xp = new SqlCommand("Insert into Users(UserId, Firstname, Lastname, Accesstype, Department, Email, Password, Confirmpassword, Dateofbirth, Phnno, Address) Values(@UserId, @Firstname, @Lastname, @Accesstype, @Department, @Email, @Password, @Confirmpassword, @Dateofbirth, @Phnno, @Address)", sq);
				SqlCommand xp1 = new SqlCommand("Insert into Department(DId, Departmentname, UserId) Values(@DId, @Departmentname, @UserId)", sq);
				SqlCommand xp2 = new SqlCommand("Insert into UserType(Id, Usertype, UserId) Values(@Id, @Usertype, @UserId)", sq);
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
				xp1.Parameters.AddWithValue("DId", TextBox11.Text);
				xp1.Parameters.AddWithValue("@Departmentname", TextBox4.Text);
				xp1.Parameters.AddWithValue("@UserId", TextBox11.Text);
				xp2.Parameters.AddWithValue("Id", TextBox11.Text);
				xp2.Parameters.AddWithValue("@Usertype", TextBox3.Text);
				xp2.Parameters.AddWithValue("@UserId", TextBox11.Text);

				sq.Open();
				xp.ExecuteNonQuery();
				xp1.ExecuteNonQuery();
				sq.Close();
			}
			Server.Transfer("Login.aspx");
			Response.Redirect(Request.RawUrl);
		}
		
	}
	
}
