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
