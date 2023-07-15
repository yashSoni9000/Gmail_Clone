<%@ Page Title="" Language="C#" MasterPageFile="~/Gmail.master" AutoEventWireup="true" CodeFile="compose.aspx.cs" Inherits="compose" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="compose.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br>
    <br>
    <div class="container bootdey">
        <div class="email-app">
            <%--<nav>
                <a href="#" class="btn btn-danger btn-block">New Email</a>
                <ul class="nav">
                    <li class="nav-item">
                        <a class="nav-link" href="#"><i class="fa fa-inbox"></i>Inbox <span class="badge badge-danger">4</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"><i class="fa fa-star"></i>Stared</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"><i class="fa fa-rocket"></i>Sent</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"><i class="fa fa-trash-o"></i>Trash</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"><i class="fa fa-bookmark"></i>Important</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"><i class="fa fa-inbox"></i>Inbox <span class="badge badge-danger">4</span></a>
                    </li>
                </ul>
            </nav>--%>
            <main>
        <p class="text-center">New Message</p>
                <br />
        <form>
            <div class="form-row mb-3">
                <label for="to" class="col-2 col-sm-1 col-form-label">To:</label>
                <div class="col-10 col-sm-11">
                    <asp:TextBox ID="TextBox1" runat="server" type="email" class="form-control" placeholder="Type email" Width="1380px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="form-row mb-3">
                <label for="cc" class="col-2 col-sm-1 col-form-label">Subject:</label>
                <div class="col-10 col-sm-11">
                    <asp:TextBox ID="TextBox2" runat="server" type="text" class="form-control" placeholder="Type Subject" Width="1380px"></asp:TextBox>
                </div>
            </div>
            <br />
        </form>
        <div class="row">
            <div class="col-sm-11 ml-auto">
                <%--<div class="toolbar" role="toolbar">
                    <div class="btn-group">
                        <button type="button" class="btn btn-light">
                            <span class="fa fa-bold"></span>
                        </button>
                        <button type="button" class="btn btn-light">
                            <span class="fa fa-italic"></span>
                        </button>
                        <button type="button" class="btn btn-light">
                            <span class="fa fa-underline"></span>
                        </button>
                    </div>
                    <div class="btn-group">
                        <button type="button" class="btn btn-light">
                            <span class="fa fa-align-left"></span>
                        </button>
                        <button type="button" class="btn btn-light">
                            <span class="fa fa-align-right"></span>
                        </button>
                        <button type="button" class="btn btn-light">
                            <span class="fa fa-align-center"></span>
                        </button>
                        <button type="button" class="btn btn-light">
                            <span class="fa fa-align-justify"></span>
                        </button>
                    </div>
                    <div class="btn-group">
                        <button type="button" class="btn btn-light">
                            <span class="fa fa-indent"></span>
                        </button>
                        <button type="button" class="btn btn-light">
                            <span class="fa fa-outdent"></span>
                        </button>
                    </div>
                    <div class="btn-group">
                        <button type="button" class="btn btn-light">
                            <span class="fa fa-list-ul"></span>
                        </button>
                        <button type="button" class="btn btn-light">
                            <span class="fa fa-list-ol"></span>
                        </button>
                    </div>
                    <button type="button" class="btn btn-light">
                        <span class="fa fa-trash-o"></span>
                    </button>
                    <button type="button" class="btn btn-light">
                        <span class="fa fa-paperclip"></span>
                    </button>
                    <div class="btn-group">
                        <button type="button" class="btn btn-light dropdown-toggle" data-toggle="dropdown">
                            <span class="fa fa-tags"></span>
                            <span class="caret"></span>
                        </button>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">add label <span class="badge badge-danger"> Home</span></a>
                            <a class="dropdown-item" href="#">add label <span class="badge badge-info"> Job</span></a>
                            <a class="dropdown-item" href="#">add label <span class="badge badge-success"> Clients</span></a>
                            <a class="dropdown-item" href="#">add label <span class="badge badge-warning"> News</span></a>
                        </div>
                    </div>
                </div>--%>
                <label for="cc" class="col-2 col-sm-1 col-form-label">Compose:</label>
                <div class="form-group mt-4">
                    <asp:TextBox ID="TextBox3" runat="server"  class="form-control" name="body" rows="12" placeholder="Click here to compose" TextMode="MultiLine" Width="1380px" Height="100px"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" ></asp:Button>
                    <asp:Button ID="Button2" runat="server" Text="Discard" ></asp:Button>

                </div>
            </div>
        </div>
    </main>
        </div>
    </div>
</asp:Content>

