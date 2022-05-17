﻿<%@ Page Language="C#" MasterPageFile="~/system.master" AutoEventWireup="true" CodeFile="sendmessage.aspx.cs" Inherits="author_sendmessage" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <span class="title">发送消息</span><table class="table">
        <tr>
            <td class="tdleft">
                消息标题</td>
            <td class="tdright">
                <asp:TextBox ID="txtTitle" runat="server" CssClass="textbox" Width="400px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtTitle" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                （限20字以内）</td>
        </tr>
        <tr>
            <td class="tdleft">
                收件人</td>
            <td class="tdright">
                <asp:TextBox ID="txtTo" runat="server" CssClass="textarea" Width="183px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtTo" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                （请直接输入用户注册名，发送给主编请直接输入“主编”）</td>
        </tr>
        <tr>
            <td class="tdleft">
                消息内容</td>
            <td class="tdright">
                <asp:TextBox ID="txtContent" runat="server" CssClass="textarea" Height="200px" 
                    Width="460px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtContent" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="tdleft">
                &nbsp;</td>
            <td class="tdright">
                <asp:Button ID="Bt_send" runat="server" CssClass="menuBig" Text="发送" 
                    onclick="Bt_send_Click" />
&nbsp;
                <asp:Button ID="Bt_cancel" runat="server" CausesValidation="False" 
                    CssClass="menuBig" Text="取消" />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
</asp:Content>

