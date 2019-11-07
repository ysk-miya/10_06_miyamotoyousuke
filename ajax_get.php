<?php
//関数ファイルの読み込み
include('functions.php');

//DB接続
$pdo = connectToDb();
//データ表示SQL作成
$dbn = 'SELECT * FROM giita_table';
$stmt = $pdo->prepare($dbn);
$status = $stmt->execute();

//データ表示
if ($status == false) {
    showSqlErrorMsg($stmt);
} else {
    echo json_encode($stmt->fetchAll());
}
