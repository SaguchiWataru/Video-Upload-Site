// 製作 : 佐口航

using System;

public partial class Default2 : System.Web.UI.Page
{
    // プレビュー用のサンプルのコメント用の変数を宣言する
    String sampleComments;

    protected void Page_Load(object sender, EventArgs e)
    {
        // var commentList = new List<String>();

        /*
        commentList.Add("▂▃▅▆▇██▇▆▅▃▂▂▃▅▆▇██▇▆▅▃▂▂▃▅▆▇██▇▆▅▃▂▂▃▅▆▇██▇▆▅▃▂▂▃▅▆▇██▇▆▅▃▂▂▃▅▆▇██▇▆▅▃▂▂▃▅");
        commentList.Add("★*━─*★*━─　★*━─*★*━─　★*━─*★*━─　★*━─*★*━─　★*━─*★*━─");
        commentList.Add("★═━┈　☆═━┈　★═━┈　☆═━┈　★═━┈　☆═━┈　★═━┈　☆═━┈　★═━┈★═━┈　☆═━┈　★═━┈");
        commentList.Add("(　ﾟ∀ﾟ)o彡°ﾊｲ！(　ﾟ∀ﾟ)o彡°ﾊｲ！(　ﾟ∀ﾟ)o彡°ﾊｲ！(　ﾟ∀ﾟ)o彡°ﾊｲ！(　ﾟ∀ﾟ)o彡°ﾊｲ");
        commentList.Add("★⋯⊶≕≍≖≎≢≣≋∺∻⋰⋰　☆⋯⊶≕≍≖≎≢≣≋∺∻⋰⋰　★⋯⊶≕≍≖≎≢≣≋∺∻⋰⋰　☆⋯⊶≕≍≖≎≢≣≋∺∻⋰★⋯⊶≕≍≖≎≢≣≋∺∻⋰⋰　☆⋯");
        commentList.Add("★≣≣≣≣≕☆≣≣≣≣≕★≣≣≣≣≕☆≣≣≣≣≕★≣≣≣≣≕☆≣≣≣≣≕★≣≣≣≣≕☆≣≣≣≣≕★≣≣≣≣≕☆≣≣≣≣≕★≣≣≣≣≕☆≣≣≣≣≕");
        commentList.Add("(　ﾟ∀ﾟ)o彡°ﾊｲ！(　ﾟ∀ﾟ)o彡°ﾊｲ！(　ﾟ∀ﾟ)o彡°ﾊｲ！(　ﾟ∀ﾟ)o彡°ﾊｲ！(　ﾟ∀ﾟ)o彡°ﾊｲ");
        commentList.Add("▉▊▋▌▍▎▏▏▎▍▌▋▊▉█▉▊▋▌▍▎▏▏▎▍▌▋▊▉█▉▊▋▌▍▉▊▋▌▍▎▏▏▎▍▌▋▊▉█▉▊▋▌▍▎▏▏▎▍▌▋▊▉█▉▊▋▌▍▎▏▏▎▍");
        commentList.Add("☆･ﾟ･｡･ﾟ　★･ﾟ･｡･ﾟ　☆･ﾟ･｡･ﾟ　★･ﾟ･｡･ﾟ　☆･ﾟ･｡･ﾟ　★･ﾟ･｡･ﾟ　☆･ﾟ･｡･ﾟ　★･ﾟ･｡･ﾟ　☆･ﾟ･｡･ﾟ");
        */

        /*
        commentList.Add("▂▃▅▆▇██▇▆▅▃▂▂▃▅▆▇██▇▆▅▃▂▂▃▅▆▇██▇▆▅▃▂");
        commentList.Add("★*━─*★*━─　★*━─*★*━─　★*━─*★*━─");
        commentList.Add("★═━┈　☆═━┈　★═━┈　☆═━┈　★═━┈　☆═━┈");
        commentList.Add("(　ﾟ∀ﾟ)o彡°ﾊｲ！(　ﾟ∀ﾟ)o彡°ﾊｲ！(　ﾟ∀ﾟ)o彡°ﾊｲ！");
        commentList.Add("★⋯⊶≕≍≖≎≢≣≋∺∻⋰⋰　☆⋯⊶≕≍≖≎≢≣≋∺∻⋰⋰　★⋯⊶≕≍≖≎≢≣≋∺∻⋰⋰　☆⋯⊶≕≍≖≎≢≣≋∺∻⋰");
        commentList.Add("★≣≣≣≣≕☆≣≣≣≣≕★≣≣≣≣≕☆≣≣≣≣≕★≣≣≣≣≕☆≣≣≣≣≕");
        commentList.Add("(　ﾟ∀ﾟ)o彡°ﾊｲ！(　ﾟ∀ﾟ)o彡°ﾊｲ！(　ﾟ∀ﾟ)o彡°ﾊｲ！");
        commentList.Add("▏▎▍▌▋▊▉█▉▊▋▌▍▎▏▏▎▍▌▋▊▉█▉▊▋▌▍▎▏");
        commentList.Add("☆･ﾟ･｡･ﾟ　★･ﾟ･｡･ﾟ　☆･ﾟ･｡･ﾟ　★･ﾟ･｡･ﾟ　☆･ﾟ･｡･ﾟ　★･ﾟ･｡･ﾟ　☆･ﾟ･｡･ﾟ");

        sampleComments = "";
        for (int i = 0; i < commentList.Count; i++)
        {
            sampleComments += commentList[i] + "\r\n";
        }
        */
        
        // サンプル用のコメントを代入する
        sampleComments = 
            "▂▃▅▆▇██▇▆▅▃▂▂▃▅▆▇██▇▆▅▃▂▂▃▅▆▇██▇▆▅▃▂" + "\n" +
            "★*━─*★*━─　★*━─*★*━─　★*━─*★*━─" + "\n" +
            "★═━┈　☆═━┈　★═━┈　☆═━┈　★═━┈　☆═━┈" + "\n" +
            "(　ﾟ∀ﾟ)o彡°ﾊｲ！(　ﾟ∀ﾟ)o彡°ﾊｲ！(　ﾟ∀ﾟ)o彡°ﾊｲ！" + "\n" +
            "★⋯⊶≕≍≖≎≢≣≋∺∻⋰⋰　☆⋯⊶≕≍≖≎≢≣≋∺∻⋰⋰　★⋯⊶≕≍≖≎≢≣≋∺∻⋰⋰　☆⋯⊶≕≍≖≎≢≣≋∺∻⋰" + "\n" +
            "★≣≣≣≣≕☆≣≣≣≣≕★≣≣≣≣≕☆≣≣≣≣≕★≣≣≣≣≕☆≣≣≣≣≕" + "\n" +
            "(　ﾟ∀ﾟ)o彡°ﾊｲ！(　ﾟ∀ﾟ)o彡°ﾊｲ！(　ﾟ∀ﾟ)o彡°ﾊｲ！" + "\n" +
            "▏▎▍▌▋▊▉█▉▊▋▌▍▎▏▏▎▍▌▋▊▉█▉▊▋▌▍▎▏" + "\n" +
            "☆･ﾟ･｡･ﾟ　★･ﾟ･｡･ﾟ　☆･ﾟ･｡･ﾟ　★･ﾟ･｡･ﾟ　☆･ﾟ･｡･ﾟ　★･ﾟ･｡･ﾟ　☆･ﾟ･｡･ﾟ";

        // 初回のみ実行
        if (!IsPostBack)
        {
            // プレビュー用のサンプルのコメントをラベルに代入する
            Label15.Text = sampleComments;

            // デフォルトのフォントサイズを代入する
            Label15.Font.Size = 12;

            // デフォルトのカラーを代入する
            Label15.ForeColor = System.Drawing.Color.White;

            // デフォルトのコメントの位置と演出のイメージ画像のファイルパスを代入する
            Image1.ImageUrl = @"./comment_normal_crystal.png";
        }
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        // コメントの位置と演出のイメージ画像をラジオボタンの項目ごとに設定する
        if (RadioButtonList1.SelectedValue == "0")
        {
            Image1.ImageUrl = @"./comment_normal_crystal.png";
        }
        else if (RadioButtonList1.SelectedValue == "1")
        {
            Image1.ImageUrl = @"./comment_jyouge30percent_crystal.png";
        }
        else if (RadioButtonList1.SelectedValue == "2")
        {
            Image1.ImageUrl = @"./comment_top30percent_crystal.png";
        }
        else if (RadioButtonList1.SelectedValue == "3")
        {
            Image1.ImageUrl = @"./comment_bottom30percent_crystal.png";
        }
        else if (RadioButtonList1.SelectedValue == "4")
        {
            Image1.ImageUrl = @"./sakura_fubuki.png";
        }
        else if (RadioButtonList1.SelectedValue == "5")
        {
            Image1.ImageUrl = @"./yuki_title.png";
        }
    }

    protected void RadioButtonList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        // コメントのデフォルトカラーをラジオボタンの項目ごとに設定する
        if (RadioButtonList4.SelectedValue == "0")
        {
            Label15.ForeColor = System.Drawing.Color.White;
        }
        else if (RadioButtonList4.SelectedValue == "1")
        {
            Label15.ForeColor = System.Drawing.Color.Red;
        }
        else if (RadioButtonList4.SelectedValue == "2")
        {
            Label15.ForeColor = System.Drawing.Color.Pink;
        }
        else if (RadioButtonList4.SelectedValue == "3")
        {
            Label15.ForeColor = System.Drawing.Color.Orange;
        }
        else if (RadioButtonList4.SelectedValue == "4")
        {
            Label15.ForeColor = System.Drawing.Color.Yellow;
        }
        else if (RadioButtonList4.SelectedValue == "5")
        {
            Label15.ForeColor = System.Drawing.Color.Green;
        }
        else if (RadioButtonList4.SelectedValue == "6")
        {
            Label15.ForeColor = System.Drawing.Color.LightBlue;
        }
        else if (RadioButtonList4.SelectedValue == "7")
        {
            Label15.ForeColor = System.Drawing.Color.Blue;
        }
        else if (RadioButtonList4.SelectedValue == "8")
        {
            Label15.ForeColor = System.Drawing.Color.Purple;
        }
        else if (RadioButtonList4.SelectedValue == "9")
        {
            Label15.ForeColor = System.Drawing.Color.Black;
        }
    }

    protected void RadioButtonList5_SelectedIndexChanged1(object sender, EventArgs e)
    {
        // コメントのフォントサイズをラジオボタンの項目ごとに設定する
        if (RadioButtonList5.SelectedValue == "0")
        {
            Label15.Font.Size = 11;
        }
        else if (RadioButtonList5.SelectedValue == "1")
        {
            Label15.Font.Size = 12;
        }
        else if (RadioButtonList5.SelectedValue == "2")
        {
            Label15.Font.Size = 13;
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        // コメントの位置と演出のラジオボタンで選択されたテキストを代入する
        Session["CommentMode"] = RadioButtonList1.SelectedItem.Text;
        // コメントの位置と演出のラジオボタンで選択されたインデックスを代入する
        Session["CommentModeIndex"] = RadioButtonList1.SelectedValue;

        // コメントのカラーのラジオボタンで選択されたテキストを代入する
        Session["CommentColor"] = RadioButtonList4.SelectedItem.Text;
        // コメントのカラーのラジオボタンで選択されたインデックスを代入する
        Session["CommentColorIndex"] = RadioButtonList4.SelectedValue;

        // コメントのサイズのラジオボタンで選択されたテキストを代入する
        Session["CommentSize"] = RadioButtonList5.SelectedItem.Text;
        // コメントのサイズのラジオボタンで選択されたインデックスを代入する
        Session["CommentSizeIndex"] = RadioButtonList5.SelectedValue;

        // コメントの鼓動のラジオボタンで選択されたテキストを代入する
        Session["CommentBeat"] = RadioButtonList2.SelectedItem.Text;
        // コメントの鼓動のラジオボタンで選択されたテキストを代入する
        Session["CommentBeatIndex"] = RadioButtonList2.SelectedItem.Text;

        // コメントのBPMのテキストボックスに入力されたテキストを代入する
        Session["CommentBPM"] = TextBox7.Text;

        // コメントのスピードのテキストボックスに入力されたテキストを代入する
        Session["CommentSpeed"] = TextBox8.Text;

        // NG共有機能のチェックボックスの選択状況を代入する
        Session["NGShareing"] = CheckBox7.Checked;

        // かんたんコメントエリアのチェックボックスの選択状況を代入する
        Session["EasyComment"] = CheckBox8.Checked;

        // 次のページへリダイレクトする
        Response.Redirect(@"./Upload3.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        // 前のページへリダイレクトする
        Response.Redirect(@"./Default.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        // 前のページへリダイレクトする
        Response.Redirect(@"./Default.aspx");
    }
}
