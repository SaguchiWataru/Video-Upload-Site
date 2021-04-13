// 製作 : 佐口航

using System;

public partial class Default4 : System.Web.UI.Page
{
    String sampleComments;

	// チェックボックスの選択状況を日本語の表記にする
    static String YesOrNo(Boolean answer)
    {
        if (answer == true)
        {
            return "はい";
        }
        else
        {
            return "いいえ";
        }
    }

	// ファイルがアップロードされていない場合に空文字のファイル名ではなく、「ファイルが選択されていません」と表示する
	static String NotSelected(String label)
    {
        if (label == "")
        {
            return "ファイルが選択されていません";
        }
        else
        {
            return label;
        }
    }

	// 文字が入力されていない場合に空文字ではなく、「入力されていません」と表示する
    static String NotInput(String label)
    {
        if (label == "")
        {
            return "入力されていません";
        }
        else
        {
            return label;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
		// 投稿の確認画面にそれぞれの項目のメタデータや設定状況を表示する
		Label25.Text = NotSelected((String)Session["VideoFileName"]);
        Label28.Text = YesOrNo((Boolean)Session["VideoDownloadEnable"]);

        Label26.Text = NotSelected((String)Session["ThumbnailFileName"]);
        Label29.Text = YesOrNo((Boolean)Session["ThumbnailDownloadEnable"]);

        Label1.Text = NotSelected((String)Session["AudioFileName"]);
        Label34.Text = YesOrNo((Boolean)Session["AudioDownloadEnable"]);

        Label2.Text = NotSelected((String)Session["StemFileName"]);
        Label35.Text = YesOrNo((Boolean)Session["StemDownloadEnable"]);

        Label3.Text = NotInput((String)Session["VideoTitle"]);
        TextBox1.Text = (String)Session["VideoDescription"];
        Label4.Text = (String)Session["Genre"];
        Label5.Text = (String)Session["Tag"];

        Label6.Text = (String)Session["CommentMode"];
        Label7.Text = (String)Session["CommentColor"];
        Label8.Text = (String)Session["CommentSize"];
        Label9.Text = (String)Session["CommentBeat"];
        Label10.Text = (String)Session["CommentBPM"];
        Label11.Text = (String)Session["CommentSpeed"];
        Label17.Text = YesOrNo((Boolean)Session["NGShareing"]);
        Label38.Text = YesOrNo((Boolean)Session["EasyComment"]);

        Label12.Text = (String)Session["ScopeOfDisclosure"];
        Label13.Text = ((DateTime)Session["ReleaseDate"]).ToString("yyyy年MM月dd日 HH時mm分");

        Label14.Text = YesOrNo((Boolean)Session["AddToCommunity"]);

        Label15.Text = YesOrNo((Boolean)Session["AddToVideoList"]);
        Label16.Text = YesOrNo((Boolean)Session["TagEditing"]);
        Label18.Text = YesOrNo((Boolean)Session["OnBlog"]);
        Label19.Text = YesOrNo((Boolean)Session["NicoNicoAdvertising"]);
        Label20.Text = YesOrNo((Boolean)Session["NicoNicoLiveIntroduction"]);
        Label21.Text = YesOrNo((Boolean)Session["Translation"]);
        Label23.Text = YesOrNo((Boolean)Session["NiceMessage"]);
        Label24.Text = (String)Session["NextVideo"];

		// コメントの位置と演出のプレビューを表示する
		if ((String)Session["CommentModeIndex"] == "0")
        {
            Image6.ImageUrl = "./comment_normal_crystal.png";
        }
        else if ((String)Session["CommentModeIndex"] == "1")
        {
            Image6.ImageUrl = "./comment_jyouge30percent_crystal.png";
        }
        else if ((String)Session["CommentModeIndex"] == "2")
        {
            Image6.ImageUrl = "./comment_top30percent_crystal.png";
        }
        else if ((String)Session["CommentModeIndex"] == "3")
        {
            Image6.ImageUrl = "./comment_bottom30percent_crystal.png";
        }
        else if ((String)Session["CommentModeIndex"] == "4")
        {
            Image6.ImageUrl = "./sakura_fubuki.png";
        }
        else if ((String)Session["CommentModeIndex"] == "5")
        {
            Image6.ImageUrl = "./yuki_title.png";
        }

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

        Label27.Text = sampleComments;

		// コメントの色とサイズのプレビューを表示する
		if ((String)Session["CommentColorIndex"] == "0")
        {
            Label27.ForeColor = System.Drawing.Color.White;
        }
        else if ((String)Session["CommentColorIndex"] == "1")
        {
            Label27.ForeColor = System.Drawing.Color.Red;
        }
        else if ((String)Session["CommentColorIndex"] == "2")
        {
            Label27.ForeColor = System.Drawing.Color.Pink;
        }
        else if ((String)Session["CommentColorIndex"] == "3")
        {
            Label27.ForeColor = System.Drawing.Color.Orange;
        }
        else if ((String)Session["CommentColorIndex"] == "4")
        {
            Label27.ForeColor = System.Drawing.Color.Yellow;
        }
        else if ((String)Session["CommentColorIndex"] == "5")
        {
            Label27.ForeColor = System.Drawing.Color.Green;
        }
        else if ((String)Session["CommentColorIndex"] == "6")
        {
            Label27.ForeColor = System.Drawing.Color.LightBlue;
        }
        else if ((String)Session["CommentColorIndex"] == "7")
        {
            Label27.ForeColor = System.Drawing.Color.Blue;
        }
        else if ((String)Session["CommentColorIndex"] == "8")
        {
            Label27.ForeColor = System.Drawing.Color.Purple;
        }
        else if ((String)Session["CommentColorIndex"] == "9")
        {
            Label27.ForeColor = System.Drawing.Color.Black;
        }

        if ((String)Session["CommentSizeIndex"] == "0")
        {
            Label27.Font.Size = 11;
        }
        else if ((String)Session["CommentSizeIndex"] == "1")
        {
            Label27.Font.Size = 12;
        }
        else if ((String)Session["CommentSizeIndex"] == "2")
        {
            Label27.Font.Size = 13;
        }

		// プレミアム会員限定または別料金の機能の、現時点での残り回数を表示する
		int uploadLimiter = int.Parse((String)Session["UploadLimiter"]) - 1;
        Label37.Text = uploadLimiter.ToString();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
		// 次のページへリダイレクトする
		Response.Redirect("./Upload6.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
		// 前のページへリダイレクトする
		Response.Redirect("./Upload3.aspx");
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
		// 前のページへリダイレクトする
		Response.Redirect("./Upload3.aspx");
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
		// 次のページへリダイレクトする
		Response.Redirect("./Upload6.aspx");
    }
}
