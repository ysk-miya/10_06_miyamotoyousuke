<?php
include('functions.php');

//DB接続
$pdo = connectToDb();

//データ表示SQL作成
$sql = 'SELECT * FROM giita_table ORDER BY indate DESC';  //giita_table
$stmt = $pdo->prepare($sql);
$status = $stmt->execute();

//データ表示
if ($status == false) {
    showSqlErrorMsg($stmt);
} else {
    $view = '';
    while ($result = $stmt->fetch(PDO::FETCH_ASSOC)) {
        $view .= '<div class="list-group">';
        $view .= '<li  class="list-group-item"><div  class="icon"><a  class="name"><img src="' . $result['image'] . '"width="30px" height="30px"></a>'; //大きさ指定で一覧に画像追加
        $view .= '<div>';
        $view .= '<p>' . '[' . $result['name'] . ']さん' . '</p>';
        $view .= '<h4>' . $result['title'] . '</h4>' . '<p>' . $result['indate'] . '</p>';
        // $view .= '<p>' . $result['comment'] . '</p>';
        $view .= '<div><a href="detail.php?id=' . $result['id'] . '" class="badge badge-primary">詳細</a>';
        // $view .= '<a href="delete.php?id=' . $result['id'] . '" class="badge badge-danger">Delete</a></div>';
        $view .= '</li></div>';
    }
}

?>

<!DOCTYPE html>
<html lang="ja">
<style>
    .search {
        padding: 10px;
    }

    .login {
        padding: 10px;
    }

    .loginicon {
        border-radius: 30px;
        cursor: pointer;
    }

    .css-fukidashi {
        padding: 0;
        margin: 0;
    }

    .list-group {
        box-sizing: inherit;
    }

    ul {
        margin: auto;
    }

    .main {
        display: flex;
    }

    .youtube view {
        display: inline-block;
    }
</style>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>G'iita</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
</head>

<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-success">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="h1" href="kadai_index.html">G'iita</a>

            <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item active">
                        <a class="nav-link" href="kadai_index.html">ホーム <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">コミュニティ</a>
                    </li>
                    <form class="form-inline my-2 my-lg-0">
                        <input name="search" class="form-control mr-sm-2" type="search" placeholder="キーワード検索" aria-label="Search" autocomplete="on" list="list">
                        <datalist id="list">
                            <option value="html">
                            <option value="css">
                            <option value="javascript">
                            <option value="PHP">
                            <option value="WEBデザイン">
                            <option value="github">
                            <option value="データベース">
                        </datalist>
                        <button name="searchPush" class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
                    </form>
                    <div class="search">
                        <a href="index.php" class="btn btn btn-secondary btn-md">投稿する</a>
                    </div>
                </ul>
                <div>
                    <div class="login">
                        <button class="loginicon">
                            <a href="login.php">ログイン</a>
                        </button>
                    </div>
                    <div class="search">
                        <a href="user_index.php" class="btn btn btn-secondary btn-md">新規ユーザー登録</a>
                    </div>
                </div>
            </div>
        </nav>
    </header>

    <div class="main">
        <ul class="view">
            <?= $view ?>
        </ul>
        <!-- ビデオリスト -->
        <div class="youtube" id="videolist"></div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
        // -----------youtube  API----------------

        //リクエストパラメータのセット
        const KEY = '　　　　　　　　　　　　　　　　　　　　　' //APIキー入力
        let url = "https://www.googleapis.com/youtube/v3/search?"; //API URL

        url += "type=video";
        url += "&part=snippet";
        url += "&q=qiita"; //Qiita動画
        url += "&videoEmbeddable=true";
        url += "&videoSyndicated=true";
        url += "&maxResults=12";
        url += "&key=" + KEY;
        // console.log(url);

        //HTMLが読み込まれてから実行する処理
        $(function() {
            //youtubeの動画を検索して取得
            $.ajax({
                url: url,
                dataType: "jsonp"
            }).done(function(data) {
                if (data.items) {
                    setData(data); //データ取得が成功した時の処理
                } else {
                    // console.log(data);
                    alert("該当するデータが見つかりませんでした");
                }
            }).fail(function(data) {
                alert("通信に失敗しました");
            });
        });

        //データ取得が成功した時の処理
        function setData(data) {
            let result = "";
            let video = "";
            //動画を表示するHTMLを作る
            for (let i = 0; i < data.items.length; i++) {
                video = '<iframe src="https://www.youtube.com/embed/';
                video += data.items[i].id.videoId;
                video += '"allowfullscreen></iframe>';
                result += '<div class="video">' + video + '</div>'
            }
            //HTMLに反映する
            $('#videolist').html(result);
        }
    </script>
</body>


</html>