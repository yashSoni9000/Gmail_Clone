<%@ Page Title="" Language="C#" MasterPageFile="~/RegisterLogin.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="form">

        <img src="http://www.androidpolice.com/wp-content/themes/ap2/ap_resize/ap_resize.php?src=http%3A%2F%2Fwww.androidpolice.com%2Fwp-content%2Fuploads%2F2015%2F10%2Fnexus2cee_Search-Thumb-150x150.png&w=150&h=150&zc=3">

        <asp:TextBox ID="TextBox1" runat="server" type="email" name="email" placeholder="Email" ></asp:TextBox>

        <asp:TextBox ID="TextBox2" runat="server" type="password" name="Password" placeholder="Password"></asp:TextBox>

        <asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="Button1_Click" />

        <a href="register.aspx">Create account</a>

    </div>
</asp:Content>

