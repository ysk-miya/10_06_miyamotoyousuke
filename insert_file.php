<?php
include('functions.php');

// 入力チェック
if (
  !isset($_POST['name']) || $_POST['name'] == '' ||
  !isset($_POST['title']) || $_POST['title'] == ''
) {
  exit('ParamError');
}

//POSTデータ取得
$name = $_POST['name'];
$title = $_POST['title'];
$comment = $_POST['comment'];
// Fileアップロードチェック
if (isset($_FILES['upfile']) && $_FILES['upfile']['error'] == 0) {
  // ファイルをアップロードしたときの処理
  //アップロードしたファイルの情報取得
  $uploadedFileName = $_FILES['upfile']['name']; //ファイル名
  $tempPathName = $_FILES['upfile']['tmp_name']; //tmpフォルダ（一時保存場所）
  // var_dump($_FILES['upfile']['tmp_name']);
  // exit();
  $fileDirectoryPath = 'upload/'; //アップロード先
  //File名の変更
  $extension = pathinfo($uploadedFileName, PATHINFO_EXTENSION);
  $uniqueName = date('YmdHis') . md5(session_id()) . "." . $extension;
  $fileNameToSave = $fileDirectoryPath . $uniqueName; //fileNameToSave変数なので何でもOK
  // var_dump($tempPathName);
  // exit();
  if (is_uploaded_file($tempPathName)) {
    if (move_uploaded_file($tempPathName, $fileNameToSave)) {
      chmod($fileNameToSave, 0644);  //権限の変更
      // $img = '<img src="' . $fileNameToSave . '" >'; //imgタグを設定
    }
  } else {
    exit('ファイルの送信に失敗しました.');
  }

  // FileUpload終了
} else {
  // ファイルをアップしていないときの処理
  exit('画像が送信されていません');
}



//DB接続
$pdo = connectToDb();

//データ登録SQL作成
$sql = 'INSERT INTO giita_table(id, image, name, title, comment, indate) VALUES(NULL, :image, :a1, :a2, :a3, sysdate())';

$stmt = $pdo->prepare($sql);
$stmt->bindValue(':image', $fileNameToSave, PDO::PARAM_STR);
$stmt->bindValue(':a1', $name, PDO::PARAM_STR);
$stmt->bindValue(':a2', $title, PDO::PARAM_STR);
$stmt->bindValue(':a3', $comment, PDO::PARAM_STR);
$status = $stmt->execute();

//データ登録処理後
if ($status == false) {
  showSqlErrorMsg($stmt);
} else {
  //index.phpへリダイレクト
  header('Location: index.php');
}
