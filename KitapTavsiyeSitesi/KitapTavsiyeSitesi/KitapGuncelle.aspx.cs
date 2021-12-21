using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace KitapTavsiyeSitesi
{
    public partial class KitapGuncelle : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Kitapid"];
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select*From Tbl_Kitaplar where Kitapid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    TextBox1.Text = oku[1].ToString();
                    TextBox2.Text = oku[2].ToString();
                    TextBox3.Text = oku[3].ToString();
                }
                bgl.baglanti().Close();
                if (Page.IsPostBack == false)
                {
                    //Kategori Listesi
                    SqlCommand komut2 = new SqlCommand("Select*From Tbl_Kategoriler", bgl.baglanti());
                    SqlDataReader oku2 = komut2.ExecuteReader();
                    DropDownList1.DataTextField = "KategoriAd";
                    DropDownList1.DataValueField = "Kategoriid";
                    DropDownList1.DataSource = oku2;
                    DropDownList1.DataBind();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));
            SqlCommand komut3 = new SqlCommand("update Tbl_Kitaplar set KitapAd=@p1,KitapYazar=@p2,KitapKonu=@p3,Kategoriid=@p4,KitapResim=@p6 where Kitapid=@p5", bgl.baglanti());
            komut3.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut3.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut3.Parameters.AddWithValue("@p3", TextBox2.Text);
            komut3.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut3.Parameters.AddWithValue("@p6", "~/resimler/" + FileUpload1.FileName);
            komut3.Parameters.AddWithValue("@p5", id);
            komut3.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            SqlCommand komut4 = new SqlCommand("update Tbl_Kitaplar set Durum=0", bgl.baglanti());
            komut4.ExecuteNonQuery();
            bgl.baglanti().Close();

            SqlCommand komut5 = new SqlCommand("update Tbl_Kitaplar set Durum=1 where Kitapid=@p1", bgl.baglanti());
            komut5.Parameters.AddWithValue("@p1", id);
            komut5.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

    }
}