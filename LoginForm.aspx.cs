using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Threading;

namespace ShopGiay
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            //tao ket noi 
            String strcn = ConfigurationManager.ConnectionStrings["QLShop"].ConnectionString;
            SqlConnection cn = new SqlConnection(strcn);
            cn.Open();
            //tao cmd 
            String strsql = "Select count(*) from TAIKHOAN where TENTK='" + txtTaikhoan.Text + "' and MATKHAU='" + txtMatkhau.Text + "'  ";
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = strsql;
            int kt = (int)cmd.ExecuteScalar();

            if (kt == 1)
            {
                lblkq.Text = "Đăng nhập thành công ";
               
                btnlogin.PostBackUrl = "~/HOME.aspx";
            }
            else
                lblkq.Text = "Đăng nhập thất bại";

        }
    }
}