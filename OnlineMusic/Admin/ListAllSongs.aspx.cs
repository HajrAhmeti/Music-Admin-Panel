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
    public partial class ListAllSongs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string str = System.Configuration.ConfigurationManager.ConnectionStrings["musicstoreConnectionString"].ConnectionString;
            SqlConnection sqlConn = new SqlConnection(str);
            SqlCommand sqlComm = new SqlCommand("Insert into Albums(ArtistID,SongID,AlbumName) VALUES (@ArtistID,@SongID,@AlbumName)", sqlConn);
            sqlComm.CommandType = CommandType.Text;

            sqlComm.Parameters.AddWithValue("@ArtistID", DropDownList1.Text);
            sqlComm.Parameters.AddWithValue("@SongID", DropDownList3.Text);
            sqlComm.Parameters.AddWithValue("@AlbumName", DropDownList2.SelectedItem.Text);


            sqlConn.Open();
            sqlComm.ExecuteReader();
            sqlConn.Close();


            Response.Redirect("ListAllSongs.aspx");
        }
    }
}