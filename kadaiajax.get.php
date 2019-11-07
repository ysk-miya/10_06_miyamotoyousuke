<?php
include('functions.php');

//DB接続
$pdo = connectToDb();

//データ表示SQL作成
$sql = 'SELECT * FROM giita_table ORDER BY indate DESC';
$stmt = $pdo->prepare($sql);
$status = $stmt->execute();

//データ表示
if ($status == false) {
    errorMsg($stmt);
} else {
    $res = []; // ② データを取得
    while ($result = $stmt->fetch(PDO::FETCH_ASSOC)) {
        $res[] = $result; // 配列に入れる
    }
    echo json_encode($res); // ③ json形式にして出力    
}
