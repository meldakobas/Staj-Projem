using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace KitapTavsiyeSitesi
{
    public partial class KitaplarAdmin : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["Kitapid"];
                islem = Request.QueryString["islem"];
                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("Select*From Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader oku2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";
                DropDownList1.DataSource = oku2;
                DropDownList1.DataBind();
            }
            //Kitap Listesi
            SqlCommand komut = new SqlCommand("Select*From Tbl_Kitaplar", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();
            if (islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete From Tbl_Kitaplar where Kitapid=@p1", bgl.baglanti());
                komutsil.Parameters.AddWithValue("@p1", id);
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            //Kitap Ekeleme
            SqlCommand komut3 = new SqlCommand("insert into Tbl_Kitaplar (KitapAd,KitapYazar,KitapKonu,Kategoriid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut3.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut3.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut3.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut3.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut3.ExecuteNonQuery();
            bgl.baglanti().Close();
            //Kategori Ekleme
            SqlCommand komut4 = new SqlCommand("update Tbl_kategoriler set KategoriAdet=KategoriAdet+1 where Kategoriid=@p1", bgl.baglanti());
            komut4.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut4.ExecuteNonQuery();
            bgl.baglanti();
        }
    }
}