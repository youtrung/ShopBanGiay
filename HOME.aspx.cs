using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopGiay
{
    public partial class HOME : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }




        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "chitiet")
            {
                Response.Redirect("Chitiet.aspx?id=" + e.CommandArgument.ToString());
            }
        }
    }
}