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
    public partial class AdminPanel : System.Web.UI.Page
    {
         string strConnString = ConfigurationManager.ConnectionStrings["musicstoreConnectionString"].ConnectionString;
            string str;
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }
    }
}