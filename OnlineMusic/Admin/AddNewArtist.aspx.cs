using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineMusic.Admin
{
    public partial class AddNewArtist : System.Web.UI.Page
    {
        string strConnString = ConfigurationManager.ConnectionStrings["musicstoreConnectionString"].ConnectionString;
        string str;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitArtist_Click(object sender, EventArgs e)
        {
            if (txtbArtistName.Text.Length==0 || txtbArtistSurname.Text.Length==0)
            {
                Response.Write("<script>alert('Please check ArtistName or ArtistSurname cannot be null');</script>");
            }
            else
            {
                string str = System.Configuration.ConfigurationManager.ConnectionStrings["musicstoreConnectionString"].ConnectionString;
                SqlConnection sqlConn = new SqlConnection(str);
                SqlCommand sqlComm = new SqlCommand("usp_InsertArtist", sqlConn);
                sqlComm.CommandType = CommandType.StoredProcedure;
                sqlComm.Parameters.AddWithValue("@ArtistName", txtbArtistName.Text);
                sqlComm.Parameters.AddWithValue("@ArtistSurname", txtbArtistSurname.Text);
                sqlComm.Parameters.AddWithValue("@ArtistGenre", DropDownGenre.Text);


                sqlConn.Open();
                sqlComm.ExecuteNonQuery();
                sqlConn.Close();


                Response.Redirect("AddNewArtist.aspx");
            }
        }

        protected void DropDownGenre_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}