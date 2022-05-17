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
using management.DataAccessHelper;
using management.BusinessLogicLayer;

public partial class expert_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridviewBind();
        }

    }

    private void GridviewBind()
    {
        int assess = 1;
        string expert = Request.Cookies["userID"].Value.ToString();
        string title = txtdocTitle.Text;
        string author = txtauthorID.Text;
        Doc dc = new Doc();
        DataSet ds = dc.expertload(expert, title, author, assess);
        GridView1.DataSource = ds.Tables[0].DefaultView;
        GridView1.DataBind();
    }

    protected void GridView1_PageIndexChanging1(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridviewBind();

    }
    protected void Bt_search_Click(object sender, EventArgs e)
    {
        GridviewBind();

    }
}
