﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace KitapTavsiyeSitesi
{
    public class sqlsinif
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-GP9HQBG;Initial Catalog=Dbo_KitapTavsiyeSitesi;Integrated Security=True");
            baglan.Open();
            return baglan;
        }
    }
}