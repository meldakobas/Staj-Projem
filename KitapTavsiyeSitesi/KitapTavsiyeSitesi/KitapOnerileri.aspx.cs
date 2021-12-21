using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace KitapTavsiyeSitesi
{
    public partial class KitapOnerileri : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["OneriKitapid"];
                islem = Request.QueryString["islem"];
            }
            SqlCommand komut3 = new SqlCommand("Select * From Tbl_KitapOnerileri", bgl.baglanti());
            SqlDataReader oku3 = komut3.ExecuteReader();
            DataList1.DataSource = oku3;
            DataList1.DataBind();
            if (islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete From Tbl_KitapOnerileri where OneriKitapid=@p1", bgl.baglanti());
                komutsil.Parameters.AddWithValue("@p1", id);
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();
            }
            Panel2.Visible = false;
            Panel4.Visible = false;
            SqlCommand komut = new SqlCommand("Select*From Tbl_KitapOnerileri where OneriKitapDurum=1", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

            SqlCommand komut2 = new SqlCommand("Select*From Tbl_KitapOnerileri where OneriKitapDurum=0", bgl.baglanti());
            SqlDataReader oku2 = komut2.ExecuteReader();
            DataList2.DataSource = oku2;
            DataList2.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }
    }
}