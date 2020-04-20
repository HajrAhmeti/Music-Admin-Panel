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
    public partial class ShowAll : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

     
        


        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = System.Configuration.ConfigurationManager.ConnectionStrings["musicstoreConnectionString"].ConnectionString;
            SqlConnection sqlConn = new SqlConnection(str);
            if (RadioButton1.Checked) {
      
                SqlCommand sqlComm = new SqlCommand("select ArtistName,ArtistSurname from Artist where ArtistName = @ArtistName or ArtistSurname = @ArtistSurname", sqlConn);
                sqlComm.CommandType = CommandType.Text;
                sqlComm.Parameters.AddWithValue("@ArtistName", TextBox1.Text);

                sqlComm.Parameters.AddWithValue("@ArtistSurname", TextBox1.Text);

                DataSet ds = new DataSet();
                sqlConn.Open();
                SqlDataAdapter sqlDA = new SqlDataAdapter(sqlComm);
                sqlDA.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                sqlConn.Close();
            }
            else if (RadioButton2.Checked)
            {
              
                SqlCommand sqlComm = new SqlCommand("searchsong1", sqlConn);
                sqlComm.CommandType = CommandType.StoredProcedure;
                sqlComm.Parameters.AddWithValue("@search", TextBox1.Text);


                DataSet ds = new DataSet();
                sqlConn.Open();
                SqlDataAdapter sqlDA = new SqlDataAdapter(sqlComm);
                sqlDA.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                sqlConn.Close();
            }
            else
            {
                SqlCommand sqlComm = new SqlCommand("searchalbum", sqlConn);
                sqlComm.CommandType = CommandType.StoredProcedure;
                sqlComm.Parameters.AddWithValue("@search", TextBox1.Text);


                DataSet ds = new DataSet();
                sqlConn.Open();
                SqlDataAdapter sqlDA = new SqlDataAdapter(sqlComm);
                sqlDA.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                sqlConn.Close();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
          

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
          

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}