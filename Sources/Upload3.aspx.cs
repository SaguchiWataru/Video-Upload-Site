// 製作 : 佐口航

using System;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // 初回のみ実行
        if (!IsPostBack)
        {
            // カレンダーに現在の日付を代入する
            Calendar1.SelectedDate = Calendar1.TodaysDate;
            
            /* Calendar1.BlackoutDates.AddDatesInPast(); */

            // 現在の時刻を代入する
            DateTime now = DateTime.Now;
            TextBox4.Text = now.ToString("HH");
            TextBox5.Text = now.ToString("mm");
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        // 公開範囲の選択状況のテキストを代入する
        Session["ScopeOfDisclosure"] = DropDownList3.SelectedItem.Text;
        // 公開範囲の選択状況のインデックスを代入する
        Session["ScopeOfDisclosureIndex"] = DropDownList3.SelectedValue;

        // カレンダーの選択状況を代入する
        Session["ReleaseDate"] = new DateTime(Calendar1.SelectedDate.Year, Calendar1.SelectedDate.Month, Calendar1.SelectedDate.Day, int.Parse(TextBox4.Text), int.Parse(TextBox5.Text), 0);
        
        // コミュニティーに動画を登録する
        Session["AddToCommunity"] = CheckBox4.Checked;
        Session["AddToVideoList"] = CheckBox5.Checked;
        Session["TagEditing"] = CheckBox6.Checked;
        Session["OnBlog"] = CheckBox8.Checked;
        Session["NicoNicoAdvertising"] = CheckBox9.Checked;
        Session["NicoNicoLiveIntroduction"] = CheckBox10.Checked;
        Session["Translation"] = CheckBox11.Checked;
        Session["NiceMessage"] = CheckBox2.Checked;
        Session["NextVideo"] = TextBox6.Text;

		// 次のページへリダイレクトする
		Response.Redirect("./Upload4.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
		// 前のページへリダイレクトする
		Response.Redirect("./Upload2.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
		// 前のページへリダイレクトする
		Response.Redirect("./Upload2.aspx");
    }
}
