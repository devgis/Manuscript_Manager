<%@ Page Language="C#" MasterPageFile="~/system.master" AutoEventWireup="true" CodeFile="assessedlist.aspx.cs" Inherits="expert_Default" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="title">
        未审稿件</p>
    <table class="table">
        <tr class="tdright">
            <td class="tdright">
                稿件名称：<asp:TextBox ID="txtdocTitle" runat="server" CssClass="textbox"></asp:TextBox>
&nbsp;稿件作者：<asp:TextBox ID="txtauthorID" runat="server" CssClass="textbox"></asp:TextBox>
&nbsp;<asp:Button ID="Bt_search" runat="server" CssClass="button" Text="查询" 
                    onclick="Bt_search_Click" />
            </td>
        </tr>
        <tr>
            <td class="tdright">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CssClass="gvstyle" GridLines="Horizontal" AllowPaging="True" BackColor="#E4E4E4" 
                    BorderWidth="1px" CellSpacing="5" 
                    onpageindexchanging="GridView1_PageIndexChanging1" DataKeyNames="docID">
            <PagerSettings FirstPageText="首页" LastPageText="尾页" 
                Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
            <Columns>
                <asp:BoundField DataField="docID" Visible="False" />
                <asp:BoundField DataField="docTitle" HeaderText="稿件名称">
                    <HeaderStyle HorizontalAlign="Center" Width="260px" />
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="docTime" DataFormatString="{0:yyyy-MM-dd}" 
                    HeaderText="投稿时间">
                    <HeaderStyle HorizontalAlign="Center" Width="120px" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="authorID" HeaderText="通讯作者">
                    <HeaderStyle HorizontalAlign="Center" Width="140px" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="下载稿件">
                    <ItemTemplate>
                        <a href="../upfiles/<%#Eval("attachName") %>">下载</a>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" Width="80px" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:HyperLinkField HeaderText="审核意见" Text="查看" DataNavigateUrlFields="docID" 
                    DataNavigateUrlFormatString="assessement.aspx?docID={0}" 
                    NavigateUrl="~/editor/assess.aspx" Target="_blank">
                    <HeaderStyle HorizontalAlign="Center" Width="80px" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:HyperLinkField>
            </Columns>
        </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

