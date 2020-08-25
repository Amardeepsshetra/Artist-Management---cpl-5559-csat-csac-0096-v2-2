using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace WebApplication2
{
	public partial class WebForm3 : System.Web.UI.Page
	{

		protected void Page_Load(object sender, EventArgs e)
		{
			TextBox5.Text = Request.Cookies["data"].Value;


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
			

			SqlCommand xp1 = new SqlCommand("Insert into RequestAccess(Rid, Userid, Status) Values(@Rid, @Userid, @Status)", sq);
			xp1.Parameters.AddWithValue("Rid", TextBox11.Text);
			xp1.Parameters.AddWithValue("@Userid", TextBox11.Text);
			xp1.Parameters.AddWithValue("@Status", "Requested");

			xp1.ExecuteNonQuery();
			sq.Close();
			Response.Redirect(Request.RawUrl);
		}

		protected void Button3_Click(object sender, EventArgs e)
		{
			
			SqlConnection sq = new SqlConnection(@"Data Source=DESKTOP-38OFP7E\SQLEXPRESS;Initial Catalog=ArtistManagement;Integrated Security=True");
			sq.Open();
			
			String sqlInsertQuery = "SELECT * FROM Users Where Email = '" + TextBox5.Text+"'";
			
			SqlCommand cmd = new SqlCommand(sqlInsertQuery, sq);
			SqlDataReader dr = cmd.ExecuteReader();

			

			if (dr.Read())
			{
			
				TextBox1.Text = (dr["Firstname"].ToString());
				TextBox2.Text = (dr["Lastname"].ToString());
				TextBox3.Text = (dr["Accesstype"].ToString());
				TextBox4.Text = (dr["Department"].ToString());
				TextBox5.Text = (dr["Email"].ToString());
				TextBox6.Text = (dr["Password"].ToString());
				TextBox7.Text = (dr["Confirmpassword"].ToString());
				TextBox8.Text = (dr["Dateofbirth"].ToString());
				TextBox9.Text = (dr["Phnno"].ToString());
				TextBox10.Text = (dr["Address"].ToString());

			}
			dr.Close();
			String sqlInsertQuery1 = "SELECT Status FROM RequestAccess Where Userid='" + TextBox11.Text + "'";
			SqlCommand cmd1 = new SqlCommand(sqlInsertQuery1, sq);
			SqlDataReader dr1 = cmd1.ExecuteReader();
			String otpt = "";
			if (dr1.Read())
			{
				otpt = (dr1["Status"].ToString());

			}

			if (otpt.Equals("Requested"))
			{
				Label12.Text = "Your Request is in processing";
			}
			else if (otpt.Equals("Approved"))
			{
				Label12.Text = "Your Request is Approved";
			}
			else if (otpt.Equals("Declined"))
			{
				Label12.Text = "Your Request is Declined";
			}
			sq.Close();
			
		}
	}
}