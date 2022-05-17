﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using management.BusinessLogicLayer;
using management.DataAccessHelper;


public partial class author_modifypwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Bt_Update_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Admin admin = new Admin();
            admin.LoadInfo(Request.Cookies["userID"].Value.ToString());
            if (txtPwdold.Text == admin.adminPwd)
            {
                string xwhere = "where adminID=" + SQLString.GetQuotedString(Request.Cookies["userID"].Value.ToString());
                Hashtable ht = new Hashtable();
                ht.Add("adminPwd", SQLString.GetQuotedString(txtPwdnew.Text));
                if (admin.Update(ht, xwhere))
                {
                    Response.Write("<Script Language=JavaScript>alert(\"密码修改成功！\")</Script>");

                }
                else
                {
                    Response.Write("<Script Language=JavaScript>alert(\"密码修改失败！\")</Script>");
                }

            }
            else
            {
                Response.Write("<Script Language=JavaScript>alert(\"旧密码错误！\")</Script>");

            }
        }

    }
    protected void Bt_reset_Click(object sender, EventArgs e)
    {
        txtPwdold.Text = "";
        txtPwdnew.Text = "";
        txtPwdconfirm.Text = "";
    }
}
