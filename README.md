# Azureを使って、簡易的な動画投稿サイトを作ってみた  
作成した動画投稿サイトは以下からアクセスできます。稀に若干読み込みに時間がかかる時があります。  
[https://saguchi-wataru.azurewebsites.net/video-upload](https://saguchi-wataru.azurewebsites.net/video-upload)  

## 主な新機能一覧

* ヘビーユーザー向けに、WAVE形式の音声ファイルもアップロードできるようにしました。

* ボカコレのように、「素材・プロジェクトファイル・STEMデータ (ZIPファイルのみ)」をアップロードできるようにしました。

* コメントの位置や演出を指定できるようにしました。

* コメントのデフォルトの色とサイズを指定できるようにしました。

* コメントの流れる速さを変更できるようにしました。

* コメントを投稿する際に、色と位置を別々のプルダウンメニューから選べるようにしました。

* 投稿した動画の動画ファイルを、視聴者がダウンロードできるようにしました。(任意で機能の有効無効を切り替えられるようにする予定です)

* 投稿した動画のサムネイルファイルを、視聴者がダウンロードできるようにしました。(任意で機能の有効無効を切り替えられるようにする予定です)

* 投稿した動画の音声ファイルを、視聴者がダウンロードできるようにしました。(任意で機能の有効無効を切り替えられるようにする予定です)

* 投稿した動画の素材・プロジェクトファイル・STEMデータを、視聴者がダウンロードできるようにしました。(任意で機能の有効無効を切り替えられるようにする予定です)

## 作る予定の機能

* カレンダーで過去の日付を選択できないようにする

* コメントレンダラーを作成する

* ユーザーログインページを作成する

* 投稿された動画一覧ページを作成する

* 28MBを超えるファイルのアップロードに対応するようにする

* 動画のタイトルを入力すると、おすすめのジャンルとタグを提案するようにする。(PythonとKerasを用いた深層学習で、学習モデルを作成しました。[https://github.com/SaguchiWataru/Deep_learning_of_titles_and_tags_using_Keras](https://github.com/SaguchiWataru/Deep_learning_of_titles_and_tags_using_Keras))

* コメントを入力すると、おすすめの色を提案するようにする。(PythonとKerasを用いた深層学習で、学習モデルを作成しました。[https://github.com/SaguchiWataru/Deep_learning_on_comments_and_colors](https://github.com/SaguchiWataru/Deep_learning_on_comments_and_colors))

## 1ページ目
![ページ1](https://raw.githubusercontent.com/SaguchiWataru/Video-Upload-Site/main/Sources/page01.png)

## 2ページ目
![ページ2](https://raw.githubusercontent.com/SaguchiWataru/Video-Upload-Site/main/Sources/page02.png)

## 3ページ目
![ページ2](https://raw.githubusercontent.com/SaguchiWataru/Video-Upload-Site/main/Sources/page03.png)

## 4ページ目(1枚目)
![ページ4-1](https://raw.githubusercontent.com/SaguchiWataru/Video-Upload-Site/main/Sources/page04-1.png)

## 4ページ目(2枚目)
![ページ4-2](https://raw.githubusercontent.com/SaguchiWataru/Video-Upload-Site/main/Sources/page04-2.png)

## 5ページ目
![ページ5](https://raw.githubusercontent.com/SaguchiWataru/Video-Upload-Site/main/Sources/page06.png)


## 最後に  

この記事を最後まで読んでいただきありがとうございます。  
もしも、企業の方で僕に興味を持って頂けた方がいらっしゃったら幸いです。  
最近は、[AtCoder](https://atcoder.jp/users/K019C1053)というプログラミングコンテストに毎週参加しています。  
プログラミングのレベルを他の人と相対的に可視化できるサイトなので、よろしければご確認ください。  
[K019C1053のコンテスト実績](https://atcoder.jp/users/K019C1053)  
K019C1053は、日本工学院専門学校の佐口航の学籍番号です。  
保有資格は、国家試験の基本情報技術者試験です。  
2023年卒業予定です。  

## ソースコード Default.aspx

```html:Default.aspx
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }

        .auto-style3 {
            color: #0081FF;
            font-size: xx-large;
        }

        .auto-style4 {
            color: #FF0000;
        }

        .auto-style7 {
            text-align: right;
        }

        .auto-style8 {
            float: left;
            margin-left: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 1280px; margin: 0 auto;">
            <span class="auto-style3"><strong>動画のアップロード</strong></span><span class="auto-style1"><strong> &gt; コメント設定 &gt; 公開設定 &gt; 投稿内容の確認</strong></span><br class="auto-style1" />
            <span class="auto-style4">※現在制作中の為、28MB以下のファイルのみアップロードできます。エラーが出た際は、ファイルを選択せずにお試しください。<br />
                ファイルを選択せずに次へ進んだ場合、サンプル映像(Adobeのカウントダウンマーク)が代わりに使用されます。<br />
                このWebページは、PC版Chromeにて動作を確認しています。<br />
            </span>
            <br />
            <strong>動画ファイル</strong><br />
            <asp:FileUpload ID="FileUpload1" runat="server" accept="video/mp4" />
            <br />
            <asp:CheckBox ID="CheckBox2" runat="server" Text="視聴者がオリジナルサイズをダウンロードして保存できるようにする" />
            <br />
            <asp:Image ID="Image3" runat="server" Height="45px" ImageUrl="./file_icon_mark_video.png" />
            <br />
            <br />
            <strong>動画のサムネイル<br />
            </strong>
            <asp:FileUpload ID="FileUpload4" runat="server" accept="image/jpeg" />
            <br />
            <asp:CheckBox ID="CheckBox3" runat="server" Text="視聴者がオリジナルサイズをダウンロードして保存できるようにする" />
            <br />
            <asp:Image ID="Image2" runat="server" Height="45px" ImageUrl="./file_icon_mark_picture.png" />
            <br />
            <br />
            <div style="width: 1080px;">
                <asp:Panel ID="Panel1" runat="server" GroupingText="プレミアム会員限定 または 別料金" Width="640px" Style="float: left; background-color: #CCCCCC;">
                    <div style="text-align: center">月に各2回まで無料</div>
                    <br />
                    <strong>音声ファイル (WAVEファイルのみ)</strong> 700MBまで (任意)<br />
                    <asp:FileUpload ID="FileUpload2" runat="server" accept=".wav" />
                    <br />
                    <asp:CheckBox ID="CheckBox4" runat="server" Text="視聴者がオリジナルサイズをダウンロードして保存できるようにする" />
                    <br />
                    <asp:Image ID="Image4" runat="server" Height="45px" ImageUrl="./file_icon_mark_music.png" />
                    <br />
                    <br />
                    <strong>素材・プロジェクトファイル・STEMデータ (ZIPファイルのみ)</strong> 4.7GBまで (任意)<br />
                    <em>
                        <asp:FileUpload ID="FileUpload3" runat="server" accept=".zip" />
                        <br />
                    </em>※視聴者はダウンロードして保存できます<em><br />
                        &nbsp;<asp:Image ID="Image5" runat="server" Height="45px" ImageUrl="./file_icon_mark_compressed.png" />
                    </em>
                    <div class="auto-style7">
                        <span class="auto-style4">今月は、残り各</span>
                        <asp:Label ID="Label36" runat="server" CssClass="auto-style4" ForeColor="Red" Text="Label"></asp:Label><span class="auto-style4">回まで無料</span>
                    </div>
                </asp:Panel>
                <div class="auto-style8">
                    <asp:Image ID="Image9" runat="server" Height="45px" ImageUrl="./ribbon01.png" />
                    <br />
                    <br />
                    <asp:Image ID="Image11" runat="server" Height="60px" ImageUrl="./bubble05.png" />
                    <br />
                    <asp:Image ID="Image7" runat="server" Height="80px" ImageUrl="./bubble01.png" />
                    <br />
                    <asp:Image ID="Image12" runat="server" Height="100px" ImageUrl="./bubble11.png" />
                </div>
            </div>
            <div style="clear: both;">
                <br />
                <strong style="margin-right: 5px;">動画のタイトル</strong>文字数:
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                /<asp:Label ID="Label4" runat="server" Text="100"></asp:Label>
            &nbsp;<span class="auto-style4">※AutoPostBackを有効にしているため、テキストボックスに変更を加えると上の項目のファイルの選択が解除されてしまいます。<br />
                現在、改善中です。お手数おかけしますが、ファイルの選択が解除された場合は再度ファイルを選択してください。</span></div>
            <asp:TextBox ID="TextBox1" AutoPostBack="true" MaintainScrollPositionOnPostBack="true" runat="server" Width="600px" MaxLength="100" placeholder="動画のタイトルを入力してください。" OnClientClick="errorMessage();"></asp:TextBox>
            <br />
            <br />
            <strong style="margin-right: 5px;">動画の説明</strong>文字数:
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            /<asp:Label ID="Label3" runat="server" Text="1200"></asp:Label>
            &nbsp;<span class="auto-style4">※AutoPostBackを有効にしているため、テキストボックスに変更を加えると上の項目のファイルの選択が解除されてしまいます。<br />
            現在、改善中です。お手数おかけしますが、ファイルの選択が解除された場合は再度ファイルを選択してください。</span><br />
            <asp:TextBox ID="TextBox2" AutoPostBack="true" MaintainScrollPositionOnPostBack="true" runat="server" Height="100px" Width="600px" MaxLength="1200" TextMode="MultiLine" placeholder="動画の説明文を入力してください。"></asp:TextBox>
            <br />
            投稿動画から引用<strong><br />
                <asp:DropDownList ID="DropDownList1" runat="server" Width="600px">
                    <asp:ListItem Selected="True" Value="動画を選択"></asp:ListItem>
                </asp:DropDownList>
                <br />
            </strong>
            <asp:CheckBox ID="CheckBox1" runat="server" Text="この動画に共通説明文を表示する" />
            <br />
            <br />
            <div style="width: 1080px;">
                <div style="float: left;">
                    <strong>ジャンルの設定</strong><br />
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="300px" AutoPostBack="True">
                        <asp:ListItem Value="0">エンターテイメント</asp:ListItem>
                        <asp:ListItem Value="1">ラジオ</asp:ListItem>
                        <asp:ListItem Value="2">音楽・サウンド</asp:ListItem>
                        <asp:ListItem Value="3">ダンス</asp:ListItem>
                        <asp:ListItem Value="4">動物</asp:ListItem>
                        <asp:ListItem Value="5">自然</asp:ListItem>
                        <asp:ListItem Value="6">料理</asp:ListItem>
                        <asp:ListItem Value="7">旅行・アウトドア</asp:ListItem>
                        <asp:ListItem Value="8">乗り物</asp:ListItem>
                        <asp:ListItem Value="9">スポーツ</asp:ListItem>
                        <asp:ListItem Value="10">社会・正常・時事</asp:ListItem>
                        <asp:ListItem Value="11">技術・工作</asp:ListItem>
                        <asp:ListItem Value="12">解説・講座</asp:ListItem>
                        <asp:ListItem Value="13">アニメ</asp:ListItem>
                        <asp:ListItem Value="14">ゲーム</asp:ListItem>
                        <asp:ListItem Value="15">その他</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <strong>タグの設定</strong><br />
                    <asp:TextBox ID="TextBox3" runat="server" Width="500px" placeholder="タグを追加 スペースで複数入力"></asp:TextBox>
                </div>
                <div style="float: left; margin-left: 10px;">
                    <asp:Image ID="Image10" runat="server" Height="45px" ImageUrl="./ribbon01.png" />
                    <br />
                    <br />
                    <asp:Image ID="Image8" runat="server" Height="80px" ImageUrl="./bubble02.png" />
                    <br />
                    <br />
                    <span>作った機械学習のモデルの詳細：<br />
                    </span><a href="https://www.nii.ac.jp/dsc/idr/userforum/program_2020.html" target="_blank">https://www.nii.ac.jp/dsc/idr/userforum/program_2020.html</a>
                </div>
            </div>
            <div style="clear: both; margin-top: 40px; margin-bottom: 80px;">
                <asp:Button ID="Button5" runat="server" Text="戻る"/>
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="次へ (コメント設定へ)" style="margin-left: 80px;"/>
            </div>
        </div>
    </form>
</body>
</html>
```

## ソースコード Default.cs

```CS:Default.aspx.cs
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
```

## ソースコード Upload2.aspx

```html:Upload2.aspx
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Upload2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style3 {
            font-size: xx-large;
        }

        .auto-style1 {
            font-size: xx-large;
        }

        .auto-style4 {
            color: #0081FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 1280px; margin: 0 auto;">
            <span class="auto-style1"><span class="auto-style3"><strong>動画のアップロード</strong></span><strong> &gt; </strong><span class="auto-style4"><strong>コメント設定</strong></span><strong> &gt; 公開設定 &gt; 投稿内容の確認</strong></span><br class="auto-style3" />
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button2_Click" Text="戻る" />
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" GroupingText="プレミアム会員限定" Style="width: 1150px; background-color: #CCCCCC;">
                <div style="float: left;">
                    <strong>コメントの位置と演出</strong>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                        <asp:ListItem Value="0" Selected="True">ノーマル (デフォルト)</asp:ListItem>
                        <asp:ListItem Value="1">上下</asp:ListItem>
                        <asp:ListItem Value="2">上</asp:ListItem>
                        <asp:ListItem Value="3">下</asp:ListItem>
                        <asp:ListItem Value="4">桜 (制作中)</asp:ListItem>
                        <asp:ListItem Value="5">雪 (制作中)</asp:ListItem>
                    </asp:RadioButtonList>
                    <div style="width: 640px; height: 360px;">
                        <div style="position: absolute; z-index: 2;">
                            <asp:Image ID="Image1" runat="server" Height="360px" Width="640px" />
                        </div>
                        <div style="position: absolute; z-index: 1;">
                            <video id="Video1" autoplay="" controls="" height="360" loop="" muted="" playinline="" src="uploaded/video.mp4" width="640">
                                <p>
                                    動画にはvideoタグをサポートしたブラウザが必要です。 
                                </p>
                            </video>
                        </div>
                    </div>
                    ※ミュートでプレビューしています。投稿すると音が出ます。
                </div>
                <div style="float: left; margin-left: 10px;">
                    <asp:Image ID="Image2" runat="server" Height="45px" ImageUrl="./ribbon01.png" />
                    <br />
                    <br />
                    <asp:Image ID="Image3" runat="server" Height="120px" ImageUrl="./bubble03.png" />
                    <br />
                    <br />
                    <asp:Image ID="Image7" runat="server" Height="60px" ImageUrl="./bubble07.png" />
                </div>
                <div style="clear: both;">
                    <br />
                    <strong>コメントのデフォルトカラー</strong>
                    <asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList4_SelectedIndexChanged">
                        <asp:ListItem Value="0" Selected="True">白 (デフォルト)</asp:ListItem>
                        <asp:ListItem Value="1">赤</asp:ListItem>
                        <asp:ListItem Value="2">ピンク</asp:ListItem>
                        <asp:ListItem Value="3">オレンジ</asp:ListItem>
                        <asp:ListItem Value="4">黄色</asp:ListItem>
                        <asp:ListItem Value="5">緑</asp:ListItem>
                        <asp:ListItem Value="6">水色</asp:ListItem>
                        <asp:ListItem Value="7">青</asp:ListItem>
                        <asp:ListItem Value="8">紫</asp:ListItem>
                        <asp:ListItem Value="9">黒</asp:ListItem>
                        <asp:ListItem Value="10">カラフル</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <br />
                <div style="float: left;">
                    <strong>コメントのデフォルトサイズ</strong><asp:RadioButtonList ID="RadioButtonList5" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList5_SelectedIndexChanged1">
                        <asp:ListItem Value="0">小</asp:ListItem>
                        <asp:ListItem Value="1" Selected="True">中 (デフォルト)</asp:ListItem>
                        <asp:ListItem Value="2">大</asp:ListItem>
                    </asp:RadioButtonList>
                    <div style="width: 640px; height: 360px;">
                        <div style="position: absolute; z-index: 2;">
                            <strong id="form3">
                                <asp:Label ID="Label15" runat="server" Height="360px" Width="640px" BorderStyle="None"></asp:Label>
                                <br />
                            </strong>
                        </div>
                        <div style="position: absolute; z-index: 1;">
                            <video id="Video2" width="640" height="360" src="./uploaded/video.mp4" controls muted autoplay playinline loop>
                                <p>
                                    動画にはvideoタグをサポートしたブラウザが必要です。
                                </p>
                            </video>
                        </div>
                    </div>
                    ※ミュートでプレビューしています。投稿すると音が出ます。
                </div>
                <div style="float: left; margin-left: 10px;">
                    <asp:Image ID="Image4" runat="server" Height="45px" ImageUrl="./ribbon01.png" />
                    <br />
                    <br />
                    <asp:Image ID="Image5" runat="server" Height="60px" ImageUrl="./bubble04.png" />
                    <br />
                    <br />
                    <asp:Image ID="Image6" runat="server" Height="60px" ImageUrl="./bubble06.png" />
                </div>
                <div style="clear: both;">
                    <br />
                    <br />
                    <div style="float: left;">
                        <strong>コメントの鼓動</strong>
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" AutoPostBack="True">
                            <asp:ListItem Selected="True" Value="0">オフ (デフォルト)</asp:ListItem>
                            <asp:ListItem Value="1">オン</asp:ListItem>
                        </asp:RadioButtonList>
                        <strong>
                            <br />
                            コメントの鼓動のBPM<br />
                            <asp:TextBox ID="TextBox7" runat="server" Width="25px">172</asp:TextBox>
                        </strong>BPM&nbsp; (デフォルト : 172BPM)<br />
                        <strong>
                            <br />
                            コメントの流れる速度<br />
                            <asp:TextBox ID="TextBox8" runat="server" Width="25px">1.0</asp:TextBox>
                        </strong>倍&nbsp; (デフォルト : 1倍)
                    </div>
                    <div style="float: left; margin-left: 10px;">
                        <asp:Image ID="Image9" runat="server" Height="45px" ImageUrl="./ribbon01.png" />
                        <br />
                        <br />
                        <asp:Image ID="Image8" runat="server" Height="180px" ImageUrl="./bubble10.png" />
                    </div>
                </div>
            </asp:Panel>
            <div style="clear: both;">
                <br />
                <asp:CheckBox ID="CheckBox7" runat="server" Text="NG共有機能の利用を許可する" Checked="True" />
                <br />
                <asp:CheckBox ID="CheckBox8" runat="server" Checked="True" Text="かんたんコメントエリアの表示を許可する" />
                <div style="margin-top: 40px; margin-bottom: 80px;">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="戻る" />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="次へ (公開設定へ)" Style="margin-left: 80px;" />
                </div>
            </div>
    </form>
</body>
</html>
```

## ソースコード Upload2.aspx.cs

```cs:Upload2.aspx.cs
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
```

## ソースコード Upload3.aspx

```html:Upload3.aspx
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Upload3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style3 {
            font-size: xx-large;
            color: #000000;
        }

        .auto-style1 {
            font-size: xx-large;
        }

        .auto-style5 {
            color: #000000;
        }

        .auto-style6 {
            color: #0081FF;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div style="width: 1280px; margin: 0 auto;">
            <div>
                <span class="auto-style1"><span class="auto-style3"><strong>動画のアップロード</strong></span><span class="auto-style5"><strong> </strong></span><strong>&gt; </strong><span class="auto-style5"><strong>コメント設定 &gt; </strong></span><span class="auto-style6"><strong>公開設定</strong></span><span class="auto-style5"><strong> &gt; 投稿内容の確認</strong></span></span><strong><br class="auto-style1" />
                </strong>
                <br />
                <asp:Button ID="Button5" runat="server" OnClick="Button4_Click" Text="戻る" />
                <br />
                <br />
                <strong>公開範囲</strong><br />
                <asp:DropDownList ID="DropDownList3" runat="server" Width="200px">
                    <asp:ListItem Value="0">公開</asp:ListItem>
                    <asp:ListItem Value="1">非公開</asp:ListItem>
                    <asp:ListItem Value="2">コミュニティ専用</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <strong>公開日時</strong><br />
                <asp:CheckBox ID="CheckBox3" runat="server" Text="タイマーON" />
            </div>

            <div style="float: left;">
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                <asp:TextBox ID="TextBox4" runat="server" Width="25px"></asp:TextBox>
                時<asp:TextBox ID="TextBox5" runat="server" Width="25px"></asp:TextBox>
                分
            </div>
            <div style="float: left; margin-left: 10px;">
                <asp:Image ID="Image1" runat="server" Height="135px" ImageUrl="./bubble12.png" />
            </div>
            <div style="clear: both;">
                <br />
                <asp:CheckBox ID="CheckBox4" runat="server" Text="コミュニティーに動画を登録する" />
            </div>
            <br />
            <strong>表示設定</strong><br />
            <asp:CheckBox ID="CheckBox5" runat="server" Text="投稿動画一覧に表示する" Checked="True" style="margin-right: 40px;"/>
            チェックを外すと、他の人から見た投稿動画一覧に表示されなくなります<br />
            <br />
            <strong>許可設定</strong><br />
            <asp:CheckBox ID="CheckBox6" runat="server" Text="一般会員のタグ編集を許可する" Checked="True" />
            <br />
            <asp:CheckBox ID="CheckBox8" runat="server" Text="ブログ等の外部サイトへの動画プレーヤー貼り付けを許可する" Checked="True" />
            <br />
            <asp:CheckBox ID="CheckBox9" runat="server" Text="広告による宣伝を許可する" Checked="True" />
            <br />
            <asp:CheckBox ID="CheckBox10" runat="server" Text="生放送による紹介を許可する" Checked="True" />
            <br />
            <asp:CheckBox ID="CheckBox11" runat="server" Text="ユーザーによるタイトルと動画説明文の翻訳を許可する" Checked="True" />
            <br />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server">NG共有機能</asp:LinkButton>
            &nbsp;|
        <asp:LinkButton ID="LinkButton2" runat="server">広告</asp:LinkButton>
            &nbsp;|
        <asp:LinkButton ID="LinkButton3" runat="server">生放送</asp:LinkButton>
            <br />
            <br />
            <strong>使用楽曲の登録</strong><br />
            <asp:Button ID="Button2" runat="server" Text="楽曲を追加" />
            <br />
            <br />
            <strong>「いいね！」へのお礼メッセージ<br />
            </strong>
            <asp:CheckBox ID="CheckBox2" runat="server" Text="この動画に「いいね！」へのお礼メッセージを表示する" style="margin-right: 40px;"/>
            チェックした動画に「いいね！」へのお礼メッセージが表示されます<br />
            <br />
            <strong>スクリプトの設定</strong><br />
            動画終了後に次の動画に移動<br />
            https://www.*********.jp/watch/<asp:TextBox ID="TextBox6" runat="server" placeholder="例: sm252525"></asp:TextBox>
            <div style="margin-top: 40px; margin-bottom: 80px;">
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="戻る" />
                <asp:Button ID="Button3" runat="server" Text="次へ (投稿内容の確認)" OnClick="Button3_Click" Style="margin-left: 80px;" />
            </div>
        </div>
    </form>
</body>
</html>
```

## ソースコード Upload3.aspx.cs

```cs:Upload3.aspx.cs
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
```

## ソースコード Upload4.aspx

```html:Upload4.aspx
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Upload4.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }

        .auto-style3 {
            font-size: xx-large;
            color: #000000;
        }

        .auto-style5 {
            color: #000000;
        }

        .auto-style6 {
            color: #0081FF;
        }

        .auto-style4 {
            color: #FF0000;
        }

        .auto-style7 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div style="width: 1280px; margin: 0 auto;">
            <span class="auto-style1"><strong><span class="auto-style3">動画のアップロード</span><span class="auto-style5"> </span>&gt; <span class="auto-style5">コメント設定 &gt; 公開設定 &gt; </span><span class="auto-style6">投稿内容の確認</span></strong></span><br class="auto-style1" />
            <span class="auto-style4">※投稿ボタンを押下後にエラーが出る場合はMicrosoft Azureの学生用の無償クレジットが失効している場合があります。</span><br class="auto-style4" />
            <span class="auto-style4">Microsoft Azureは、コメントを保管するためのデータベースのSQL Serverの為に使用しています。<br />
            SQL Serverは有償のため学生用のクレジットが失効する恐れがあります。</span><br class="auto-style4" />
            <span class="auto-style4">また、このWebページもMicrosoft AzureのApp Serviceを使用して運用しています。</span><br />
            <br />
            <asp:Button ID="Button6" runat="server" Text="戻る" OnClick="Button6_Click" />
            <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="投稿" Style="margin-left: 80px;" />
            <br />
            <br />
            <strong>動画ファイル : </strong>
            <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
            <br />
            視聴者がオリジナルサイズをダウンロードして保存できるようにする :
            <asp:Label ID="Label28" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Image ID="Image3" runat="server" Height="45px" ImageUrl="./file_icon_mark_video.png" />
            <br />
            <br />
            <strong>動画のサムネイル : </strong>
            <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>
            <br />
            視聴者がオリジナルサイズをダウンロードして保存できるようにする :
            <asp:Label ID="Label29" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Image ID="Image2" runat="server" Height="90px" ImageUrl="./uploaded/thumbnail.jpg" />
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" GroupingText="プレミアム会員限定 または 別料金" Width="1000px" style="background-color: #CCCCCC">
                <div style="text-align: center">月に各2回まで無料</div>
                <br />
                <strong>音声ファイル (WAVEファイルのみ)</strong>&nbsp; (任意) :
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <br />
                視聴者がオリジナルサイズをダウンロードして保存できるようにする :
                <asp:Label ID="Label34" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Image ID="Image4" runat="server" Height="45px" ImageUrl="./file_icon_mark_music.png" />
                <br />
                <br />
                <strong>素材・プロジェクトファイル・STEMデータ (ZIPファイルのみ)</strong>&nbsp; (任意) :
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                <br />
                視聴者がダウンロードして保存できるようにする :
                <asp:Label ID="Label35" runat="server" Text="Label"></asp:Label>
                <br />
                <em>
                    <asp:Image ID="Image5" runat="server" Height="45px" ImageUrl="./file_icon_mark_compressed.png" />
                </em>
                <div class="auto-style7">
                    <span class="auto-style4">動画投稿後、今月は残り各 </span>
                    <asp:Label ID="Label37" runat="server" CssClass="auto-style4" ForeColor="Red" Text="Label"></asp:Label>
                    <span class="auto-style4">回まで無料</span>
                </div>
            </asp:Panel>
            <br />
            <strong>動画のタイトル : </strong>
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <br />
            <strong>
                <br />
                動画の説明<br />
                <asp:TextBox ID="TextBox1" runat="server" Height="100px" ReadOnly="True" TextMode="MultiLine" Width="600px"></asp:TextBox>
                <br />
            </strong>
            <br />
            <div style="width: 1080px;">
                <div style="float: left;">
                    <strong>動画とコメントのプレビュー<br />
                    </strong>
                    コメントの位置と演出<strong><br />
                        <div style="width: 640px; height: 360px;">
                            <div style="position: absolute; z-index: 2;">
                                <asp:Image ID="Image6" runat="server" Height="360px" Width="640px" />
                            </div>
                            <div style="position: absolute; z-index: 1;">
                                <video id="Video1" width="640" height="360" src="./uploaded/video.mp4" controls muted autoplay playinline loop>
                                    <p>
                                        動画にはvideoタグをサポートしたブラウザが必要です。
                                    </p>
                                </video>
                            </div>
                        </div>
                    </strong>
                    ※ミュートでプレビューしています。投稿すると音が出ます。 <strong>
                        <br />
                        <br />
                    </strong>
                    コメントの色とサイズ<br />
                    <div style="width: 640px; height: 360px;">
                        <div style="position: absolute; z-index: 2;">
                            <strong id="form3">
                                <asp:Label ID="Label27" runat="server" Height="360px" Width="640px" BorderStyle="None"></asp:Label>
                            </strong>
                        </div>
                        <div style="position: absolute; z-index: 1;">
                            <video id="Video2" width="640" height="360" src="./uploaded/video.mp4" controls muted autoplay playinline loop>
                                <p>
                                    動画にはvideoタグをサポートしたブラウザが必要です。
                                </p>
                            </video>
                        </div>
                    </div>
                    ※ミュートでプレビューしています。投稿すると音が出ます。
                </div>
                <div style="float: left; margin-left: 10px;">
                    <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl="./bubble08.png" />
                    <br />
                </div>
            </div>
            <div style="clear: both;">
                <br />
                <br />
                <strong>ジャンルの設定 : </strong>
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <strong>タグの設定 : </strong>
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <strong>コメントのモード : </strong>
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <strong>コメントのデフォルトカラー : </strong>
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <strong>コメントのデフォルトサイズ : </strong>
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <strong>コメントの鼓動 : </strong>
                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <strong>コメントの鼓動のBPM :
                </strong>
                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <strong>コメントの流れる速度 :
                </strong>
                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <strong>NG共有機能の利用を許可する : </strong>
                <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <strong>かんたんコメントエリアの表示を許可する : </strong>
                <asp:Label ID="Label38" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <strong>公開範囲 : </strong>
                <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <strong>公開日時 : </strong>
                <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <strong>コミュニティーに動画を登録する : </strong>
                <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                <br />
                <strong>投稿動画一覧に表示する : </strong>
                <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                <br />
                <strong>一般会員のタグ編集を許可する : </strong>
                <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                <br />
                <strong>ブログ等の外部サイトへの動画プレーヤー貼り付けを許可する : </strong>
                <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                <br />
                <strong>広告による宣伝を許可する : </strong>
                <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                <strong>
                    <br />
                    生放送による紹介を許可する</strong> :
                <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
                <br />
                <strong>ユーザーによるタイトルと動画説明文の翻訳を許可する : </strong>
                <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
                <br />
                <strong>使用楽曲の登録する : </strong>
                <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
                <br />
                <strong>この動画に「いいね！」へのお礼メッセージを表示する</strong> :
                <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
                <br />
                <strong>動画終了後に次の動画に移動</strong> :
            https://www.*********.jp/watch/<asp:Label ID="Label24" runat="server" Text="Label"></asp:Label>
                <div style="margin-top: 40px; margin-bottom: 80px;">
                    <asp:Button ID="Button5" runat="server" Text="戻る" OnClick="Button5_Click" />
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="投稿" Style="margin-left: 80px;" />
                </div>
            </div>
        </div>
        </div>
    </form>
</body>
</html>
```

## ソースコード Upload4.aspx.cs

```cs:Upload4.aspx.cs
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
```

## ソースコード Upload5.aspx

```html:Upload5.aspx
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Upload5.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }

        .auto-style2 {
            text-align: center;
            width: 1150px;
            margin: 0 auto;
        }

        .auto-style3 {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <span class="auto-style1">投稿が完了しました</span><br class="auto-style1" />
            <br />
            <asp:Image ID="Image1" runat="server" Height="180px" ImageUrl="./party_cracker_kamifubuki.png" Style="margin-bottom: 40px;" />
            <div style="margin-bottom: 40px;">
                <asp:Button ID="Button3" runat="server" Text="投稿した動画を見る" OnClick="Button3_Click" Style="margin: 10px; width: 200px;" />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="続けて動画を投稿する" Style="margin: 10px; width: 200px;" />
            </div>
            <span class="auto-style3">※このサイトはテスト用のため、投稿した動画は次回ご利用時に自動で削除されます。</span><br class="auto-style3" />
            <div style="margin-top: 500px;">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="トップに戻る" Style="margin: 10px; width: 200px;" />
                <asp:Button ID="Button4" runat="server" Text="マイページに戻る" Style="margin: 10px; width: 200px;" />
            </div>
        </div>
    </form>
</body>
</html>
```

## ソースコード Upload5.aspx.cs

```cs:Upload5.aspx.cs
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
```

## ソースコード Upload6.aspx

```html:Upload6.aspx
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Upload6.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #999999;
        }

        .auto-style2 {
            color: #0081FF;
        }

        .auto-style3 {
            color: #000000;
            font-size: xx-large;
        }

        .auto-style4 {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 1800px; margin: 0 auto; margin-bottom: 80px;">
            <div style="text-align: center">
                <span class="auto-style3"><strong>投稿が完了しました！<asp:Image ID="Image2" runat="server" Height="90px" ImageUrl="./party_cracker_kamifubuki.png" /></strong></span>
                <br />
                <span class="auto-style4">※このWebページはテスト用のため、投稿した動画は次回ご利用時に自動で削除されます。</span><br />
            </div>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label" Style="font-weight: 700; font-size: xx-large;"></asp:Label>
            <div>
                <div style="float: left; border-right: solid; height: 68px; color: #999999;">
                    <div style="float: left;">
                        <asp:Image ID="Image1" runat="server" Height="52px" Width="52px" />
                    </div>
                    <div style="float: left; margin-right: 10px; color: #000000;">
                        <asp:Label ID="Label10" runat="server" Text="テストユーザー" Style="color: #0081FF;"></asp:Label>
                        <span class="auto-style2">さん</span><br />
                    </div>
                </div>
                <div style="float: left; border-right: solid; height: 68px; color: #999999;">
                    <div style="float: left; margin: 10px;">
                        <span class="auto-style1">投稿日時</span><br class="auto-style1" />
                        <asp:Label ID="Label5" runat="server" Text="Label" CssClass="auto-style1"></asp:Label>
                    </div>
                </div>
                <div style="float: left; border-right: solid; height: 68px; color: #999999;">
                    <div style="float: left; margin: 10px;">
                        <span class="auto-style1">再生数</span><br class="auto-style1" />
                        <asp:Label ID="Label9" runat="server" Text="Label" CssClass="auto-style1"></asp:Label>
                        <br />
                    </div>
                </div>
                <div style="float: left; border-right: solid; height: 68px; color: #999999;">
                    <div style="float: left; margin: 10px;">
                        <span class="auto-style1">コメント数</span><br class="auto-style1" />
                        <asp:Label ID="Label6" runat="server" Text="Label" CssClass="auto-style1"></asp:Label>
                        <br />
                    </div>
                </div>
                <div style="float: left; border-right: solid; height: 68px; color: #999999;">
                    <div style="float: left; margin: 10px;">
                        <span class="auto-style1">マイリスト数</span><br class="auto-style1" />
                        <asp:Label ID="Label7" runat="server" Text="Label" CssClass="auto-style1"></asp:Label>
                        <br />
                    </div>
                </div>
                <div style="float: left; border-right: solid; height: 68px; color: #999999;">
                    <div style="float: left; margin: 10px;">
                        <span class="auto-style1">ジャンル</span><br class="auto-style1" />
                        <asp:Label ID="Label3" runat="server" Text="Label" CssClass="auto-style1"></asp:Label>
                    </div>
                </div>
                <div style="float: left; height: 68px; color: #999999;">
                    <div style="float: left; margin: 10px;">
                        <span class="auto-style1">ランキング最高順位</span><br class="auto-style1" />
                        <asp:Label ID="Label8" runat="server" Text="Label" CssClass="auto-style1"></asp:Label>
                    </div>
                </div>
            </div>
            <div style="clear: both; margin-top: 20px; margin-bottom: 10px;">
                <div>
                    <asp:Button ID="Button1" runat="server" Text="タグ編集" Style="margin-right: 20px;" />
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </div>
            </div>
            <div style="clear: both;">
                <asp:Panel ID="Panel1" runat="server" GroupingText="プレミアム会員のみダウンロード可能" Style="width: 1280px; margin-bottom: 10px;">
                    <div style="float: left;">
                        <div style="float: left; margin-right: 20px; margin-bottom: 20px;">
                            <span class="auto-style1">動画ファイル (mp4ファイル)</span><br class="auto-style1" />
                            <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                            <br />
                            <asp:Button ID="Button6" runat="server" Text="ダウンロード" OnClick="Button6_Click" />
                        </div>
                    </div>
                    <div style="float: left;">
                        <div style="float: left; margin-right: 20px; margin-bottom: 20px;">
                            <span class="auto-style1">サムネイル (JPEGファイル)</span><br class="auto-style1" />
                            <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                            <br />
                            <asp:Button ID="Button7" runat="server" Text="ダウンロード" OnClick="Button7_Click" />
                        </div>
                    </div>
                    <div style="float: left;">
                        <div style="float: left; margin-right: 20px; margin-bottom: 20px;">
                            <span class="auto-style1">音声ファイル (WAVEファイル)</span><br class="auto-style1" />
                            <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                            <br />
                            <asp:Button ID="Button3" runat="server" Text="ダウンロード" OnClick="Button3_Click" />
                        </div>
                    </div>
                    <div style="float: left;">
                        <div style="float: left; margin-right: 20px; margin-bottom: 20px;">
                            <span class="auto-style1">素材・プロジェクトファイル・STEMデータ (ZIPファイル)</span><br class="auto-style1" />
                            <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                            <br />
                            <asp:Button ID="Button4" runat="server" Text="ダウンロード" OnClick="Button4_Click" />
                        </div>
                    </div>
                </asp:Panel>
            </div>
            <div style="clear: both; float: left;">
                <video id="Video1" height="480" src="./uploaded/video.mp4" controls muted autoplay playinline loop>
                    <p>
                        動画にはvideoタグをサポートしたブラウザが必要です。
                    </p>
                </video>
            </div>

            <div style="float: left; margin-left: 10px;">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" DataKeyNames="postDate" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="postDate" HeaderText="投稿日時" ReadOnly="True" SortExpression="postDate" />
                        <asp:BoundField DataField="text" HeaderText="コメント" SortExpression="text" />
                        <asp:BoundField DataField="timecode" HeaderText="タイムコード" SortExpression="timecode" />
                        <asp:BoundField DataField="color" HeaderText="色" SortExpression="color" />
                        <asp:BoundField DataField="position" HeaderText="位置" SortExpression="position" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:commentListConnectionString %>" DeleteCommand="DELETE FROM [comments] WHERE [postDate] = @postDate" SelectCommand="SELECT * FROM [comments]"></asp:SqlDataSource>
            </div>

            <div style="margin-bottom: 5px; clear: both;">
                <asp:TextBox ID="TextBox2" runat="server" placeholder="コメントを入力してください" Style="width: 775px;"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" Text="投稿" Style="color: #FFFFFF; font-weight: 700; background-color: #0081FF" Width="60px" OnClick="Button2_Click1" />
            </div>
            <div>
                色<asp:DropDownList ID="DropDownList1" runat="server" Style="margin-left: 5px; margin-right: 20px">
                    <asp:ListItem Value="0" Selected="True">白</asp:ListItem>
                    <asp:ListItem Value="1">赤</asp:ListItem>
                    <asp:ListItem Value="2">ピンク</asp:ListItem>
                    <asp:ListItem Value="3">オレンジ</asp:ListItem>
                    <asp:ListItem Value="4">黄色</asp:ListItem>
                    <asp:ListItem Value="5">緑</asp:ListItem>
                    <asp:ListItem Value="6">水色</asp:ListItem>
                    <asp:ListItem Value="7">青</asp:ListItem>
                    <asp:ListItem Value="8">紫</asp:ListItem>
                    <asp:ListItem Value="9">黒</asp:ListItem>
                    <asp:ListItem Value="10">カラフル</asp:ListItem>
                </asp:DropDownList>
                位置<asp:DropDownList ID="DropDownList2" runat="server" Style="margin-left: 5px; margin-right: 20px" Height="16px">
                    <asp:ListItem Value="0">上</asp:ListItem>
                    <asp:ListItem Value="1" Selected="True">通常</asp:ListItem>
                    <asp:ListItem Value="2">下</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="TextBox1" runat="server" placeholder="その他のコマンドを入力してください(省略可)" Style="width: 320px;"></asp:TextBox>
            </div>
            <div style="margin-top: 15px; margin-bottom: 15px;">
                動画の説明<br />
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                <br />
                <div style="text-align: center">
                    <asp:Button ID="Button5" runat="server" OnClick="Button2_Click" Text="続けて動画を投稿する" Style="margin-top: 100px; width: 200px;" />
                </div>
            </div>

        </div>
    </form>
</body>
</html>
```

## ソースコード Upload6.aspx.cs

```cs:Upload6.aspx.cs
// 製作 : 佐口航

using System;
using System.IO;
using System.Data;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
	//DB接続文字列を定義する Web.config内に記述あり
	string connectionString;

	//SQLデータアダプタを定義する
	SqlDataAdapter dataAdapter;

	//データセットを定義する
	DataSet dataSet;

	//テーブルを定義する
	DataTable table;

	//行を定義する
	DataRow row;

	static String NotSelected(String label)
    {
		// ファイルが無い場合は「ファイルがありません」と表示する
        if (label == "")
        {
            return "ファイルがありません";
        }
        else
        {
            return label;
        }
    }

    static String NotSelectedForSampleFiles(String label)
    {
		// ファイルが無い場合は「サンプルデータ」と表示する
        if (label == "")
        {
            return "サンプルデータ";
        }
        else
        {
            return label;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
		// AzureのSQLサーバーに接続するためのコネクションストリングを代入する Web.config内に記述あり
		connectionString = SqlDataSource1.ConnectionString;

		// 全ての列とレコードを選択する
        dataAdapter = new SqlDataAdapter("select * from comments", connectionString);

		// データセットを定義する
		dataSet = new DataSet();

		// try{

			// DBファイルを開く
			dataAdapter.Fill(dataSet, "comments");
            table = dataSet.Tables["comments"];
        /*}
        catch
        {
            TextBox2.Text = er.Message;
            table = dataSet.Tables.Add("comments");
            table.Columns.Add("postDate");
            table.Columns.Add("text");
            table.Columns.Add("timecode");
        }
        */

        if (!IsPostBack)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = connection.CreateCommand();
            connection.Open();
            command.CommandText = @"DELETE FROM comments";
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            adapter.Fill(table);

            // 新しい行をテーブルに追加する
            row = table.NewRow();
            DateTime dt = DateTime.Now;
            row["postDate"] = dt.ToString("yyyy/MM/dd/HH/mm/ss") + "/" + dt.Millisecond;
            row["text"] = "これはテストです。コメントを投稿してください。";
            row["timecode"] = "00:00:00";
            row["color"] = "白";
            row["position"] = "通常";

            table.Rows.Add(row);

			// insert用コマンドを生成する
			new SqlCommandBuilder(dataAdapter);

			// DBを更新する
			dataAdapter.Update(dataSet, "comments");

            // コメントの色のデフォルトを設定する
            DropDownList1.SelectedIndex = int.Parse((String)Session["CommentColorIndex"]);
        }

        // GridViewの表示を更新する
        GridView1.DataBind();

        Label1.Text = (String)Session["VideoTitle"];
        Label2.Text = (String)Session["VideoDescription"];
        Label3.Text = (String)Session["Genre"];
        Label4.Text = (String)Session["Tag"];
        Label5.Text = ((DateTime)Session["ReleaseDate"]).ToString("yyyy年MM月dd日 HH時mm分");
        Label9.Text = 0.ToString();
        Label6.Text = 0.ToString();
        Label7.Text = 0.ToString();
        Label8.Text = "-";
        Label11.Text = NotSelected((String)Session["AudioFileName"]);
        Label12.Text = NotSelected((String)Session["StemFileName"]);
        Label13.Text = NotSelectedForSampleFiles((String)Session["VideoFileName"]);
        Label14.Text = NotSelected((String)Session["ThumbnailFileName"]);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
		// 最初のページへリダイレクトする
        Response.Redirect("./Default.aspx");
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
		// 作業フォルダのディレクトリを代入する
        String workPath = Server.MapPath(@"./");

		// 動画ファイルが存在するか判定する
        if (File.Exists(workPath + @"uploaded/video.mp4"))
        {
			// 動画ファイルのダウンロード処理を実行する
            Response.Clear();
            Response.ContentType = "application/octet-stream";
            Response.HeaderEncoding = System.Text.Encoding.UTF8;
            Response.ContentEncoding = System.Text.Encoding.UTF8;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + "video.mp4");
            Response.TransmitFile(workPath + @"uploaded/video.mp4");
            Response.End();
        }
        else
        {
			// 動画ファイルがない場合はJavaScriptでアラートを表示する
            ClientScript.RegisterStartupScript(this.GetType(), "startup", "alert(\"ファイルがありません。\")", true);
        }
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
		// 作業フォルダのディレクトリを代入する
		String workPath = Server.MapPath(@"./");

		// サムネイルファイルが存在するか判定する
		if (File.Exists(workPath + @"/uploaded/thumbnail.jpg"))
        {
			// サムネイルファイルのダウンロード処理を実行する
			Response.Clear();
            Response.ContentType = "application/octet-stream";
            Response.HeaderEncoding = System.Text.Encoding.UTF8;
            Response.ContentEncoding = System.Text.Encoding.UTF8;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + "thumbnail.jpg");
            Response.TransmitFile(workPath + @"/uploaded/thumbnail.jpg");
            Response.End();
        }
        else
        {
			// サムネイルファイルがない場合はJavaScriptでアラートを表示する
			ClientScript.RegisterStartupScript(this.GetType(), "startup", "alert(\"ファイルがありません。\")", true);
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
		// 作業フォルダのディレクトリを代入する
		String workPath = Server.MapPath(@"./");

		// 音声ファイルが存在するか判定する
		if (File.Exists(workPath + @"/uploaded/audio.wav"))
        {
			// 音声ファイルのダウンロード処理を実行する
			Response.Clear();
            Response.ContentType = "application/octet-stream";
            Response.HeaderEncoding = System.Text.Encoding.UTF8;
            Response.ContentEncoding = System.Text.Encoding.UTF8;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + "audio.wav");
            Response.TransmitFile(workPath + @"/uploaded/audio.wav");
            Response.End();
        }
        else
        {
			// 音声ファイルがない場合はJavaScriptでアラートを表示する
			ClientScript.RegisterStartupScript(this.GetType(), "startup", "alert(\"ファイルがありません。\")", true);
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
		// 作業フォルダのディレクトリを代入する
		String workPath = Server.MapPath(@"./");

		// 音声ファイルが存在するか判定する
		if (File.Exists(workPath + @"/uploaded/stem.zip"))
        {
			// 素材・プロジェクトファイル・STEMデータ (ZIPファイル)のダウンロード処理を実行する
			Response.Clear();
            Response.ContentType = "application/octet-stream";
            Response.HeaderEncoding = System.Text.Encoding.UTF8;
            Response.ContentEncoding = System.Text.Encoding.UTF8;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + "stem.zip");
            Response.TransmitFile(workPath + @"/uploaded/stem.zip");
            Response.End();
        }
        else
        {
			// 素材・プロジェクトファイル・STEMデータ (ZIPファイル)がない場合はJavaScriptでアラートを表示する
			ClientScript.RegisterStartupScript(this.GetType(), "startup", "alert(\"ファイルがありません。\")", true);
        }
    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        // 新しい行をテーブルに追加する
        row = table.NewRow();

		// 時刻を代入する
        DateTime dt = DateTime.Now;
        row["postDate"] = dt.ToString("yyyy/MM/dd/HH/mm/ss") + "/" + dt.Millisecond;

		// コメントを代入する
        row["text"] = TextBox2.Text;

		// タイムコードを代入する
        // int time = Video1.currentTime;
        row["timecode"] = "00:00:00";

		// 色を代入する
        row["color"] = DropDownList1.SelectedItem.Text;

		// 位置を代入する
        row["position"] = DropDownList2.SelectedItem.Text;

		// テーブルにレコードをインサートする
        table.Rows.Add(row);

		// insert用コマンドを生成する
		new SqlCommandBuilder(dataAdapter);

		// DBを更新する
		dataAdapter.Update(dataSet, "comments");

        // GridViewの表示を更新する
        GridView1.DataBind();
    }

    protected void SqlDataSource1_Selecting(object sender, System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void SqlDataSource1_Selecting1(object sender, System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs e)
    {

    }
}
```

## ソースコード Web.config
```html:Web.config
<!-- Web.Config Configuration File -->
<configuration>
  <connectionStrings>
    <add name="commentListConnectionString" connectionString="************************************************************************************************"
      providerName="System.Data.SqlClient" />
  </connectionStrings>
  <system.web>
    <customErrors mode="Off"/>
    <compilation debug="true"/>
  </system.web>
  <system.webServer>
    <security>
      <requestFiltering>
      </requestFiltering>
    </security>
    <staticContent>
      <mimeMap fileExtension=".mp4" mimeType="video/mp4" />
      <mimeMap fileExtension=".jpg" mimeType="image/jpeg" />
      <mimeMap fileExtension=".wav" mimeType="audio/wav" />
      <mimeMap fileExtension=".zip" mimeType="application/x-zip-compressed" />
    </staticContent>
  </system.webServer>
</configuration>
```
