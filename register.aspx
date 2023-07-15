<%@ Page Title="" Language="C#" MasterPageFile="~/RegisterLogin.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="form">

        <img src="http://www.androidpolice.com/wp-content/themes/ap2/ap_resize/ap_resize.php?src=http%3A%2F%2Fwww.androidpolice.com%2Fwp-content%2Fuploads%2F2015%2F10%2Fnexus2cee_Search-Thumb-150x150.png&w=150&h=150&zc=3">

        <asp:TextBox ID="TextBox1" runat="server" type="text" name="name" placeholder="Name"></asp:TextBox>

        <asp:TextBox ID="TextBox2" runat="server" type="text" name="username" placeholder="UserName"></asp:TextBox>

        <asp:TextBox ID="TextBox3" runat="server" type="email" name="email" placeholder="Email"></asp:TextBox>

        <asp:TextBox ID="TextBox4" runat="server" type="password" name="Password" placeholder="Password"></asp:TextBox>

        <asp:Button ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />

    </div>
</asp:Content>

