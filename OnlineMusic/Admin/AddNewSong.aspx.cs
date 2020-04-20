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
    public partial class AddNewSong : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnAddSong_Click(object sender, EventArgs e)
        {
            string str = System.Configuration.ConfigurationManager.ConnectionStrings["musicstoreConnectionString"].ConnectionString;
            SqlConnection sqlConn = new SqlConnection(str);
            SqlCommand sqlComm = new SqlCommand("InsertSong", sqlConn);
            sqlComm.CommandType = CommandType.StoredProcedure;

            sqlComm.Parameters.AddWithValue("@ArtistID", DropDownList1.Text);
            sqlComm.Parameters.AddWithValue("@SongName", TextBox1.Text);
            sqlComm.Parameters.AddWithValue("@SongLength", TextBox2.Text);
            sqlComm.Parameters.AddWithValue("@SongYear", txtsdate.Text);


            sqlConn.Open();
            sqlComm.ExecuteNonQuery();
            sqlConn.Close();
            

            Response.Redirect("AddNewSong.aspx");
        }
    }
}