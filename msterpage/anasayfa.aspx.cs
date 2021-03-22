using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace msterpage
{
    public partial class anasayfa : System.Web.UI.Page
    {

       
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (kadi.Text != "")
            {
                Panel2.Visible = true;

            }
            else
                Panel2.Visible = false;
           divcevir.Visible = false;
        }

      

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ad = Convert.ToString(txtkadı.Text);
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
            cnn.Open();
            string sql = "Select *FROM kayıt WHERE Kullanıcıadı=@adi AND Şifre=@şifresi";
            SqlParameter prm1 = new SqlParameter("adi", txtkadı.Text.Trim());
            SqlParameter prm2 = new SqlParameter("şifresi", txtşifre.Text.Trim());
            SqlCommand komut = new SqlCommand(sql, cnn);
            komut.Parameters.Add(prm1);
            komut.Parameters.Add(prm2);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(komut);
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                Label1.Text = "başarılı";
                Panel1.Visible = false;
                Panel2.Visible = true;
                kadi.Text = ad;
            }
            else
                Label1.Text = "başarısız";


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (kadi.Text != "")
            {

                Panel2.Visible = true;

            }
            divcevir.Visible = true;
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
            cnn.Open();
            SqlCommand komut = new SqlCommand("SELECT *FROM Çeviri where İngilizce like '" + txtara.Text + "'", cnn);
            SqlDataReader read = komut.ExecuteReader();
            while (read.Read())

            {
            txtcevir.Text = read["Türkçe"].ToString();

            }
            cnn.Close();






        }

        protected void Unnamed5_Click(object sender, EventArgs e)
        {
            
        }

        protected void Unnamed5_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Güncelle.aspx");
           
        }

        protected void Unnamed6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Güncelle2.aspx");
        }

        protected void Unnamed7_Click(object sender, EventArgs e)
        {
            

            string confirmValue = Request.Form["confirm_value"];
            if (confirmValue == "No")
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('You clicked YES!')", true);
            }
            else
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('You clicked NO!')", true);
            }
        }
    }
}