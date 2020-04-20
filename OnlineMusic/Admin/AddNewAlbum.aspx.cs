using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineMusic.Admin
{
    public partial class AddNewAlbum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string str = System.Configuration.ConfigurationManager.ConnectionStrings["musicstoreConnectionString"].ConnectionString;
            SqlConnection sqlConn = new SqlConnection(str);
            SqlCommand sqlComm = new SqlCommand("usp_InsertAlbum", sqlConn);

            sqlComm.CommandType = CommandType.StoredProcedure;
            sqlComm.Parameters.AddWithValue("@ArtistID", dropdownArtist.Text);
            sqlComm.Parameters.AddWithValue("@AlbumName", btnAddAlbum.Text);

            sqlConn.Open();
            sqlComm.ExecuteNonQuery();
            sqlConn.Close();

            Response.Write("<script>alert('Album inserted successfully..');window.location = 'ListAlbums.aspx';</script>");
        }

        protected void dropdownArtist_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}