<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="KitapTavsiyeSitesi.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
        .auto-style11 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <p class="auto-style11">
        <strong>Hakkımızda</strong></p>
    <asp:DataList ID="DataList2" runat="server" Width="646px">
        <ItemTemplate>
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
    <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl="~/Resimler/fırınmakarna.jpg" Width="449px" />
</asp:Content>
