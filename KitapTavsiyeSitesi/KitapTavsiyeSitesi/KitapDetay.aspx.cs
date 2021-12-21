using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace KitapTavsiyeSitesi
{
    public partial class KitapDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string kitapid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kitapid = Request.QueryString["Kitapid"];
            SqlCommand komut = new SqlCommand("Select KitapAd From Tbl_Kitaplar where kitapid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", kitapid);
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                Label2.Text = oku[0].ToString();
            }
            bgl.baglanti().Close();

            SqlCommand komut2 = new SqlCommand("Select*From Tbl_Yorumlar where kitapid=@p2", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p2", kitapid);
            SqlDataReader oku2 = komut2.ExecuteReader();
            DataList2.DataSource = oku2;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Yorumlar(YorumAdSoyad,YorumMail,YorumIcerik,Kitapid)values(@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", kitapid);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}