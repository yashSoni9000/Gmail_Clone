<%@ Page Title="" Language="C#" MasterPageFile="~/Gmail.master" AutoEventWireup="true" CodeFile="sent.aspx.cs" Inherits="sent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="mail">
        <asp:Repeater ID="r1" runat="server">
            <ItemTemplate>
                  <div class="inbox-message-item  message-default-unread">

                <div class="checkbox" style="margin-right: -12px;" >
                  <button class="btn">
                    <img src="/app/assets/icons/check_box_outline_blank_black_24dp.svg" alt="Select" class="btn-icon-sm btn-icon-alt btn-icon-hover message-btn-icon">
                  </button>
                </div>

                <div class="message-group-hidden">
                  <button class="btn-alt btn-nofill drag-indicator" >
                    <img src="/app/assets/icons/drag_indicator_black_24dp.svg" alt="Drag" class="btn-icon-sm btn-icon-alt btn-icon-disabled" >
                  </button>
                </div>

                <div >
                  <button class="btn star" style="margin: 0;">
                    <img src="/app/assets/icons/star_border_black_24dp.svg" alt="Not starred" class="btn-icon-sm btn-icon-alt btn-icon-hover message-btn-icon">
                  </button>
                </div>

                <div class="message-default" >

                  <div class="message-sender message-content" >
                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("sto") %>'></asp:Label>
                  </div>

                  <div class="message-subject message-content">
                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("subject") %>'></asp:Label>
                  </div>

                  <div class="message-seperator message-content"> - </div>

                  <div class="message-body message-content">
                     <asp:Label ID="Label3" runat="server" Text='<%#Eval("message") %>'></asp:Label>
                  </div>
                  
                  <div class="gap message-content" > &nbsp; </div>

                  <div class="message-date center-text" >
                      <asp:Label ID="Label4" runat="server" Text='<%#Eval("time") %>'></asp:Label>
                  </div>

                </div>

                <div class="message-group-hidden" >
                  <div class="inbox-message-item-options">
                        <asp:LinkButton runat="server" ID="Del_Btn" OnCommand="Del_Btn_Command" CommandName='<%#Eval("id") %>' >
                            <img src="/app/assets/icons/delete_black_24dp.svg" alt="Delete" class="btn-icon-sm btn-icon-alt btn-icon-hover">
                        </asp:LinkButton>
                   
                  </div>
                </div>

              </div>
            </ItemTemplate>
        </asp:Repeater>
          </div>
</asp:Content>

