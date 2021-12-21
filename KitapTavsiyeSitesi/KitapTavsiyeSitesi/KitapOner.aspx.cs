using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace KitapTavsiyeSitesi
{
    public partial class KitapOner : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnKitapOner_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_KitapOnerileri(OneriKitapAd,OneriKitapYazar,OneriKitapKonu,OneriKitapResim,OneriKitapSahip,OneriKitapSahipMail) values(@t1,@t2,@t3,@t4,@t5,@t6)", bgl.baglanti());
            komut.Parameters.AddWithValue("@t1", TxtKitapAd.Text);
            komut.Parameters.AddWithValue("@t2", TxtYazar.Text);
            komut.Parameters.AddWithValue("@t3", TxtKonu.Text);
            komut.Parameters.AddWithValue("@t4", FileUpload1.FileName);
            komut.Parameters.AddWithValue("@t5", TxtAdSoyad.Text);
            komut.Parameters.AddWithValue("@t6", TxtMail.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Öneriniz Alınmıştır. Onay sürecinden geçtikten sonra bilgilendirileceksiniz");
        }
    }
}