// 製作 : 佐口航

using System;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
		// 前のページへリダイレクトする
		Response.Redirect("./Default.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
		// 次のページへリダイレクトする
		Response.Redirect("./Upload6.aspx");
    }
}