// 製作 : 佐口航

using System;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // プレミアム会員限定または別料金の機能の、現時点での残り回数を代入する
        Label36.Text = "2";

        // 初回のみ実行
        if (!IsPostBack)
        {
            // 動画のタイトルの文字数を代入する
            Label1.Text = "0";

            // 動画の説明の文字数を代入する
            Label2.Text = "0";
        }
        else
        {
            // 動画のタイトルが入力されているか判定する
            if (TextBox1.Text != null)
            {
                // 動画のタイトルの文字数をカウントしてラベルに代入する
                Label1.Text = (TextBox1.Text.Length).ToString();
            }
            else
            {
                // 動画のタイトルが未入力の場合、0をラベルに代入する
                Label1.Text = "0";
            }

            if (TextBox2.Text != null)
            {
                // 動画の説明の文字数をカウントしてラベルに代入する
                Label2.Text = (TextBox2.Text.Length).ToString();
            }
            else
            {
                // 動画の説明が未入力の場合、0をラベルに代入する
                Label2.Text = "0";
            }
        }

        if (!IsPostBack)
        {
            // 作業フォルダのパスを読み込む
            String workPath = Server.MapPath(@"./");
            try
            {
                // 既存のファイルがある場合は削除する
                File.Delete(workPath + @"uploaded/video.mp4");
            }
            catch
            {
                // 既存のファイルが無い場合は何もしない
            }

            try
            {
                // 既存のファイルがある場合は削除する
                File.Delete(workPath + @"/uploaded/audio.wav");
            }
            catch
            {
                // 既存のファイルが無い場合は何もしない
            }

            try
            {
                // 既存のファイルがある場合は削除する
                File.Delete(workPath + @"/uploaded/stem.zip");
            }
            catch
            {
                // 既存のファイルが無い場合は何もしない
            }

            try
            {
                // 既存のファイルがある場合は削除する
                File.Delete(workPath + @"/uploaded/thumbnail.jpg");
            }
            catch
            {
                // 既存のファイルが無い場合は何もしない
            }
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        // 作業フォルダのパスを読み込む
        String workPath = Server.MapPath(@"./");

        // 動画のタイトルが入力されているか判定する
        if (TextBox1.Text.Length == 0)
        {
            // 動画のタイトルが未入力の場合はJavaScriptでアラートを表示する
            ClientScript.RegisterStartupScript(this.GetType(), "startup", "alert(\"「動画のタイトル」を入力してください。\")", true);

            // この先のプログラムは読み込まないようにする
            return;
        }

        // 動画の説明が入力されているか判定する
        if (TextBox2.Text.Length == 0)
        {
            // 動画の説明が未入力の場合はJavaScriptでアラートを表示する
            ClientScript.RegisterStartupScript(this.GetType(), "startup", "alert(\"「動画の説明」を入力してください。\")", true);

            // この先のプログラムは読み込まないようにする
            return;
        }

        // 動画のタイトルの文字数が上限の範囲内か判定する
        if (100 < TextBox1.Text.Length)
        {
            // 動画のタイトルの文字数が上限を超えている場合はJavaScriptでアラートを表示する
            ClientScript.RegisterStartupScript(this.GetType(), "startup", "alert(\"「動画のタイトル」の文字数が上限を超えています。\")", true);

            // この先のプログラムは読み込まないようにする
            return;
        }

        // 動画の説明の文字数が上限の範囲内か判定する
        if (1200 < TextBox2.Text.Length)
        {
            // 動画の説明の文字数が上限を超えている場合はJavaScriptでアラートを表示する
            ClientScript.RegisterStartupScript(this.GetType(), "startup", "alert(\"「動画の説明」の文字数が上限を超えています。\")", true);

            // この先のプログラムは読み込まないようにする
            return;
        }

        // 動画ファイルのサイズが上限の範囲内か判定する 標準機能で扱えるファイルサイズが28MBだったため28MBを超えるファイルは拒否します
        if (FileUpload1.PostedFile.ContentLength > 29360128)  // 28MBを超えるファイルは拒否する
        {
            // 動画ファイルのサイズが上限を超えている場合はJavaScriptでアラートを表示する
            ClientScript.RegisterStartupScript(this.GetType(), "startup", "alert(\"動画ファイルのサイズが上限を超えています。\bテスト用のWebページのため、28MB以下のファイルのみアップロードできます。\bまた、テスト用のWebページのため、ファイルを選択せずに次へ進むこともできます。\")", true);

            // この先のプログラムは読み込まないようにする
            return;
        }

        // 動画のサムネイルのサイズが上限の範囲内か判定する 標準機能で扱えるファイルサイズが28MBだったため28MBを超えるファイルは拒否します
        if (FileUpload4.PostedFile.ContentLength > 29360128)  // 28MBを超えるファイルは拒否する
        {
            // 動画のサムネイルのサイズが上限を超えている場合はJavaScriptでアラートを表示する
            ClientScript.RegisterStartupScript(this.GetType(), "startup", "alert(\"動画のサムネイルのサイズが上限を超えています。\bテスト用のWebページのため、28MB以下のファイルのみアップロードできます。\bまた、テスト用のWebページのため、ファイルを選択せずに次へ進むこともできます。\")", true);

            // この先のプログラムは読み込まないようにする
            return;
        }

        // 音声ファイルのサイズが上限の範囲内か判定する 標準機能で扱えるファイルサイズが28MBだったため28MBを超えるファイルは拒否します
        if (FileUpload2.PostedFile.ContentLength > 29360128)  // 28MBを超えるファイルは拒否する
        {
            // 音声ファイルのサイズが上限を超えている場合はJavaScriptでアラートを表示する
            ClientScript.RegisterStartupScript(this.GetType(), "startup", "alert(\"音声ファイルのサイズが上限を超えています。\bテスト用のWebページのため、28MB以下のファイルのみアップロードできます。\bまた、テスト用のWebページのため、ファイルを選択せずに次へ進むこともできます。\")", true);

            // この先のプログラムは読み込まないようにする
            return;
        }

        // 素材・プロジェクトファイル・STEMデータのサイズが上限の範囲内か判定する 標準機能で扱えるファイルサイズが28MBだったため28MBを超えるファイルは拒否します
        if (FileUpload3.PostedFile.ContentLength > 29360128)  // 28MBを超えるファイルは拒否する
        {
            // 素材・プロジェクトファイル・STEMデータのサイズが上限を超えている場合はJavaScriptでアラートを表示する
            ClientScript.RegisterStartupScript(this.GetType(), "startup", "alert(\"素材・プロジェクトファイル・STEMデータのサイズが上限を超えています。\bテスト用のWebページのため、28MB以下のファイルのみアップロードできます。\bまた、テスト用のWebページのため、ファイルを選択せずに次へ進むこともできます。\")", true);

            // この先のプログラムは読み込まないようにする
            return;
        }

        // 動画ファイルがアップロードされているか判定する
        if (FileUpload1.HasFile)
        {
            // アップロードされた動画ファイルをサーバーに保存する
            FileUpload1.SaveAs(workPath + @"uploaded/video.mp4");
        }
        else
        {
            // 動画ファイルがアップロードされていない場合は、サンプルの動画を使用する
            File.Copy(workPath + @"defaultVideo.mp4", workPath + @"uploaded/video.mp4", true);
        }

        // 音声ファイルがアップロードされているか判定する
        if (FileUpload2.HasFile)
        {
            // アップロードされた音声ファイルをサーバーに保存する
            FileUpload2.SaveAs(workPath + @"/uploaded/audio.wav");
        }

        // 素材・プロジェクトファイル・STEMデータがアップロードされているか判定する
        if (FileUpload3.HasFile)
        {
            // アップロードされた素材・プロジェクトファイル・STEMデータをサーバーに保存する
            FileUpload3.SaveAs(workPath + @"/uploaded/stem.zip");
        }

        // 動画のサムネイルがアップロードされているか判定する
        if (FileUpload4.HasFile)
        {
            // アップロードされた動画のサムネイルをサーバーに保存する
            FileUpload4.SaveAs(workPath + @"/uploaded/thumbnail.jpg");
        }
        
        // 動画ファイルのファイル名を代入する アップロードされていない場合は空文字が代入される
        Session["VideoFileName"] = FileUpload1.FileName;
        Session["VideoDownloadEnable"] = CheckBox2.Checked;

        // 動画のサムネイルのファイル名を代入する アップロードされていない場合は空文字が代入される
        Session["ThumbnailFileName"] = FileUpload4.FileName;
        Session["ThumbnailDownloadEnable"] = CheckBox3.Checked;

        // 音声ファイルのファイル名を代入する アップロードされていない場合は空文字が代入される
        Session["AudioFileName"] = FileUpload2.FileName;
        Session["AudioDownloadEnable"] = CheckBox4.Checked;

        // 素材・プロジェクトファイル・STEMデータのファイル名を代入する アップロードされていない場合は空文字が代入される
        Session["StemFileName"] = FileUpload3.FileName;
        Session["StemDownloadEnable"] = true;

        // 動画のタイトルを代入する
        Session["VideoTitle"] = TextBox1.Text;
        // 動画の説明を代入する
        Session["VideoDescription"] = TextBox2.Text;

        // 動画のジャンルを代入する
        Session["Genre"] = DropDownList2.SelectedItem.Text;
        // 動画のタグを代入する
        Session["Tag"] = TextBox3.Text;
        // プレミアム会員限定または別料金の機能の、現時点での残り回数を代入する
        Session["UploadLimiter"] = Label36.Text;

        // 新しいウィンドウで開く場合
        // System.Diagnostics.Process.Start("http://localhost:50393/Default2.aspx");

        // 次のページにリダイレクトする
        Response.Redirect(@"./Upload2.aspx");
    }
}
