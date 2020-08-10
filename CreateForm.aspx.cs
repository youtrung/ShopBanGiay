using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace ShopGiay
{
    public partial class CreateForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTaoTK_Click(object sender, EventArgs e)
        {
            String fileName, filePath;
            if (Page.IsValid && FileUpload1.HasFile)
            {
                fileName = "Anh3x4/" + FileUpload1.FileName;
                filePath = MapPath(fileName);
                FileUpload1.SaveAs(filePath);
            }
            //tao ket noi 
            String strcn = ConfigurationManager.ConnectionStrings["QLShop"].ConnectionString;
            SqlConnection cn = new SqlConnection(strcn);
            cn.Open();

            //thực thi cmd
            string Addsql = "insert into TAIKHOAN(TENTK,MATKHAU,EMAIL,PHONE,FILEHINHANH) values('" + txtTaikhoan.Text + "','" + txtMatkhau.Text + "','" + txtEmail.Text + "','" + txtSDT.Text + "','" + FileUpload1.FileName + "') ";
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = Addsql;

            int rs = cmd.ExecuteNonQuery();
            if (rs == 1)
            {
                lblkq.Text = "Tạo tài khoản thành công";
                btnTaoTK.PostBackUrl = "~/Loginform.aspx";
               
            }
        }
    }
}