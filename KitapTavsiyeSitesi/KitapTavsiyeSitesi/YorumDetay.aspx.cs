using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace KitapTavsiyeSitesi
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yorumid"];
            if (Page.IsPostBack == false)
            {


                SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail,YorumIcerik,KitapAd From Tbl_Yorumlar inner join Tbl_Kitaplar on Tbl_yorumlar.Kitapid=Tbl_Kitaplar.Kitapid where Yorumid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    TextBox1.Text = oku[0].ToString();
                    TextBox2.Text = oku[1].ToString();
                    TextBox3.Text = oku[2].ToString();
                    TextBox4.Text = oku[3].ToString();
                }
                bgl.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("Update Tbl_Yorumlar set YorumIcerik=@p1,YorumOnay=@p2 where Yorumid=@p3", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", TextBox3.Text);
            komut2.Parameters.AddWithValue("@p2", "True");
            komut2.Parameters.AddWithValue("@p3", id);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}