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
