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
                    色とサイズ<br />
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
