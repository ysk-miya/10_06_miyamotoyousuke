-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2019 年 11 月 07 日 15:53
-- サーバのバージョン： 10.4.6-MariaDB
-- PHP のバージョン: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacfd04_06`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `ajax_table`
--

CREATE TABLE `ajax_table` (
  `id` int(12) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `ajax_table`
--

INSERT INTO `ajax_table` (`id`, `name`, `comment`, `image`, `indate`) VALUES
(4, '宮本洋介', 'っっっっっh', 'upload/20191106013450d41d8cd98f00b204e9800998ecf8427e.png', '2019-11-06 09:34:50'),
(5, 'hara', 'っっっb', 'upload/20191106013534d41d8cd98f00b204e9800998ecf8427e.png', '2019-11-06 09:35:34'),
(6, 'っっっっb', 'っっっっb', 'upload/20191106013646d41d8cd98f00b204e9800998ecf8427e.png', '2019-11-06 09:36:46'),
(7, 'miyamoto', 'テストーー', 'upload/20191106014658d41d8cd98f00b204e9800998ecf8427e.jpg', '2019-11-06 09:46:58'),
(8, 'hara', '；；；', 'upload/20191106014822d41d8cd98f00b204e9800998ecf8427e.jpg', '2019-11-06 09:48:22'),
(9, 'ああああ', 'nnnnnn', 'upload/20191106142415d41d8cd98f00b204e9800998ecf8427e.jpeg', '2019-11-06 22:24:15');

-- --------------------------------------------------------

--
-- テーブルの構造 `event_table`
--

CREATE TABLE `event_table` (
  `id` int(11) NOT NULL,
  `name` varchar(18) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `event` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `age` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `event_table`
--

INSERT INTO `event_table` (`id`, `name`, `email`, `event`, `age`, `comment`, `indate`) VALUES
(8, '宮本洋介', 'aaaaaaaaa@gmail.com', 'pilates', '20代', 'あああああ', '2019-10-17 22:35:10'),
(9, '田中', 'bbbbbbb@gmail.com', 'yoga', '20代', 'いいいいい', '2019-10-17 22:35:27'),
(11, '中村', 'ddddddd@gmail.com', 'training', '50代', 'ええええええ', '2019-10-17 22:36:21'),
(13, '佐々木', 'pppppp@aaaa.com', 'training', '60代', 'ssssss', '2019-10-17 22:40:26'),
(14, '山田', 'fffffffff@gmail.com', 'training', '70代', 'おおおおお', '2019-10-17 23:28:03'),
(16, '井田', 'gggg@gmail.com', 'course', '40代', 'aaaa', '2019-10-19 14:04:00'),
(17, '宮本洋介', 'bbbbbbb@gmail.com', 'pilates', '20代', 'vvvvv', '2019-10-19 14:12:43');

-- --------------------------------------------------------

--
-- テーブルの構造 `giita_table`
--

CREATE TABLE `giita_table` (
  `id` int(12) NOT NULL,
  `image` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(5000) COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `giita_table`
--

INSERT INTO `giita_table` (`id`, `image`, `name`, `title`, `comment`, `indate`) VALUES
(37, 'upload/20191107133106d41d8cd98f00b204e9800998ecf8427e.jpeg', 'dcvwsv', 'HTMLレッスン忘備録(HTML5)', 'HTMLレッスン\r\nwebサイトの基本\r\n　　◆ドメインとは\r\n　　　インターネット上の住所のこと\r\n　　　①　ＵＲＬ　　　　http://www.abc.com/\r\n　　　②メールアドレス　Qiita@abc.com\r\n　　　ドメイン取得業者より取得する。取得したドメインはURLにもメールアドレスにも使える\r\n\r\n　　◆ホームページが表示される仕組み\r\n　　　①ページ製作者がHTMLを作成\r\n　　　②HTMLデータをインターネット上のサーバーにアップロード\r\n　　　③ページ閲覧者がブラウザでアクセス\r\n　　　④ブラウザがページを整形して表示\r\n\r\n　　◆HTMLファイル作成時のルール\r\n　　　①拡張子は.htmlか.htm\r\n　　　②１ページにつき、１ファイル\r\n　　　③トップページのファイル名はindex.html\r\n\r\nHTMLの基本\r\n　　◆ホームページの基本ルール\r\n　　　●<!DOCTYPE html>\r\n　　　　HTML5で書いていくという意味。\r\n　　　●\r\n　　　　HTML文書の宣言。　lang=\"ja\"は、日本語で書いていくという意味。\r\n●\r\n　　　　実際のweb画面に表示されない領域。文章についての情報を定義したり、\r\n　　　　外部のファイルを呼び出すために使用する要素。\r\n●\r\n　　　　検索結果や、タブの所に表示されるページのタイトルを記述する。\r\n　　　●\r\n　　　　文字化けを防ぐための文字コードの指定。\r\n●\r\n　　　　実際のweb画面に表示される内容をこの中に記述する。\r\n　　　\r\n\r\nURLとドメインとフォルダ\r\n　　◆URLについて\r\n　　　●URLは「ドメイン + フォルダ名」で構成される\r\n　　　　例えば、abc.co.jpというドメインを取得して、\r\n　　　　サーバーに\r\n　　　　　①index.html\r\n　　　　　②companyというフォルダに入ったindex.html\r\n　　　　　③serviceというフォルダに入ったindex.html\r\n　　　　というファイルがあった場合のそれぞれのページのURLは\r\n　　　　　①www.abc.co.jp\r\n　　　　　②www.abc.co.jp/company/\r\n　　　　　③www.abc.co.jp/service/\r\n　　　　となる。\r\n\r\nリンクの挿入\r\n　　◆リンクの書き方\r\n　　　●外部リンク(別のサイトへのリンク)\r\n　　　アンカーテキスト(リンクが貼られている文字列)\r\n　　　●内部リンク(同じサイト内の別ページへのリンク)\r\n　　　　内部リンクの場合、リンクタグの中に、絶対パスを記載する方法と、\r\n　　　　相対パスを記述する方法がある。\r\n　　　　■相対パスの記述\r\n　　　　　①同じ階層へのリンク\r\n　　　　　　アンカーテキスト\r\n　　　　　　またはアンカーテキスト\r\n　　　　　②１階層下へのリンク\r\n　　　　　　アンカーテキスト\r\n　　　　　　またはアンカーテキスト\r\n　　　　　③１階層上のファイルへのリンク\r\n　　　　　　アンカーテキスト\r\n　　　　　④１階層上のフォルダの中へのリンク\r\n　　　　　　アンカーテキスト', '2019-11-07 21:31:06'),
(38, 'upload/20191107133224d41d8cd98f00b204e9800998ecf8427e.jpeg', 'cwdsfwv', 'HTMLの基礎の基礎~HTML文書の基本構成~', 'HTML文書の基本構成\r\nHTML文書はさっくりと以下のような構成になってます。\r\n\r\n<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>My test page</title>\r\n  </head>\r\n  <body>\r\n   Hello World!\r\n  </body>\r\n</html>\r\nなんか、「<」や「>」が沢山ありますね。今回は中身の解説は置いといて基本的な構成要素を説明します。\r\nまず、「<」と「>」に囲まれた部分を「コンテンツ」、「<」と「>」を「タグ」、その「タグ」に囲まれた「要素」が構成されてます。\r\nそれから、前に置く「タグ」を「開始タグ」と呼び、どこから要素が始まっているのかやどこで効果が始まるのかを表しています。\r\n最後に、後に置く「タグ」を「終了タグ」と呼び、どこで要素が終わっているかを表しています。\r\nわかりやすく以下の段落を使って説明してみましょう。\r\n\r\n<p>My cat is very grumpy</p>\r\n<p>は開始タグ(opening tag)\r\n</p>は終了タグ(closing tag)\r\n“My cat is very grumpy”と言う文字列はコンテンツ(content)\r\n<p>My cat is very grumpy</p>を一つの要素(element)\r\nと言います。\r\n\r\n引用 : ゲーム好きエンジニア柴犬のブログ\r\n\r\n初めてのHTML-(2)-HTML文書の基本構成', '2019-11-07 21:32:24'),
(39, 'upload/20191107133350d41d8cd98f00b204e9800998ecf8427e.jpeg', 'cwsfvwsr', 'CSS基礎', 'CSS基礎\r\nsample.html\r\n```html\r\n<html>\r\n<head>\r\n<title>CSSの学習</title>\r\n<meta charset=\"UTF-8\">\r\n<meta name=\"description\" content=\"CSSの学習\">\r\n<meta name=\"viewport\" content=\"width=device-width,initial-scale=1\">\r\n\r\n\r\n\r\n<!-- 1. CDN（Content Delivery Network）ネット上に公開されたJSやCSSなど。 -->\r\n<link href=\"https://fonts.googleapis.com/css?family=Mansalva&display=swap\" rel=\"stylesheet\">\r\n\r\n<!-- 2. styleタグ -->\r\n<style>\r\n    /* 3. id を指定するときは #をつける */\r\n    #id1 {\r\n        color: blue;\r\n    }\r\n\r\n    /* 4. class を指定する場合、「.」をつける */\r\n    .class1 {\r\n        color: red;\r\n    }\r\n\r\n    .a1 {background: #ffd9bf; color: #ed6103; }\r\n\r\n\r\n@media screen and (min-width: 1024px) { \r\n    /*　5. 画面サイズが1024pxからはここを読み込む　*/\r\n    .media-query { \r\n        font-size: 30px \r\n    }\r\n}\r\n\r\n@media screen and (min-width: 320px) { \r\n    /*　6. 計算ができる、下は画面サイズを縮小させると文字が縮小する例　*/\r\n    .calc { \r\n        font-size: calc(100vw / 30);\r\n    }\r\n}\r\n\r\n</style>\r\n\r\n</head>\r\n<body>\r\n\r\n<!-- 7. idは1ページに1つだけしか定義してはいけない -->\r\n<div id=\"id1\">idは1ページに1つだけしか定義してはいけない</div>\r\n\r\n<br>\r\n\r\n<!-- 8. classは1ページに複数定義してもよい -->\r\n<div class=\"class1\">classは1ページに複数定義してもよい</div>\r\n\r\n<br>\r\n\r\n<div class=\"class1\">classは1ページに複数定義してもよい</div>\r\n\r\n<br>\r\n\r\n<!-- 9. フォントを指定 -->\r\n<div style=\"font-family: \'Mansalva\', cursive;\">Google Fonts</div>\r\n\r\n<br>\r\n\r\n<div style=\"color: black\">\r\n・3パターンのstyle指定方法がある\r\n<!-- 10. linkタグ -->\r\n<p>1. linkタグ &lt;link href=\"http://x.com\" rel=\"stylesheet\"&gt;</p>\r\n<!-- 11. styleタグ -->\r\n<p>2. styleタグ &lt;style&gt; .id { color: red } &lt;/style&gt;</p>\r\n<!-- 12. style属性を設定 -->\r\n<p>3. style属性 style=\"color: red\"</p>\r\n</div>\r\n\r\n<br>\r\n\r\n<!-- 13. color: 文字色 -->\r\n<div style=\"color: red\">文字色 { color: red }</div>\r\n\r\n<br>\r\n\r\n<!-- 14. background-color: 背景色-->\r\n<div style=\"background-color: #ffd9bf; color: #ed6103\">背景色 { background-color: #ffd9b }</div>\r\n\r\n<br>\r\n\r\n<!-- 15. font-size: 文字サイズ-->\r\n<div style=\"font-size: 20px\">font-size: 20px</div>\r\n\r\n<br>\r\n\r\n<!-- 16. font-weight: 文字太さ-->\r\n<div style=\"font-weight: bold\">font-weight: bold</div>\r\n\r\n<br>\r\n\r\n<!-- 17. padding: 文字の上下左右の余白 -->\r\n<div style=\"padding: 10px 10px 10px 10px\" class=\"a1\">padding 10px 10px 10px 10px</div>\r\n\r\n<br>\r\n\r\n<!-- 18. margin: 文字の周りにあるボーダー上下左右の余白 -->\r\n<div style=\"margin: 10px 10px 10px 10px\" class=\"a1\">margin 10px 10px 10px 10px</div>\r\n\r\n<br>\r\n\r\n<!-- 19. border-radius: 角を丸める -->\r\n<div style=\"border-radius: 5px; padding: 5px 50px\" class=\"a1\">border-radius: 5px;</div>\r\n\r\n<br>\r\n\r\n<!-- 20. display: flexをつけたFlexコンテナ(親要素)の中に、Flexアイテム(子要素)を入れると子要素が横に並ぶ -->\r\n<div style=\"display: flex\">\r\n    <div class=\"a1\">Flexアイテム</div>　\r\n    <div class=\"a1\">Flexアイテム</div>\r\n</div>\r\n\r\n<br>\r\n\r\n<!-- 21. display: flex; justify-content: center; Flexアイテムを横の中央に配置 -->\r\n<div style=\"display: flex; justify-content: center\">\r\n    <div class=\"a1\">display: flex; justify-content: center</div>　\r\n</div>\r\n\r\n<br>\r\n\r\n<!-- 22. display: flex; align-items: center; Flexアイテムを縦の中央に配置 -->\r\n<div style=\"display: flex; align-items: center; height: 100px; background-color: cornsilk\">\r\n    <div class=\"a1\">display: flex; align-items: center</div>　\r\n</div>\r\n\r\n<br>\r\n\r\n<!-- 23. align-self: center; Flexアイテム自分自身を中央に配置 -->\r\n<div style=\"display: flex; height: 100px; background-color: cornsilk\">\r\n    <div class=\"a1\" style=\"align-self: center\">align-self: center</div>　\r\n</div>\r\n\r\n<br>\r\n\r\n<!-- 24. @media; メディアクエリブレイクポイントを判定できる。 -->\r\n<div class=\"media-query\">media-query</div>\r\n\r\n<br>\r\n\r\n<!-- 25. calc; cssで計算ができる -->\r\n<div class=\"calc\">calc</div>\r\n\r\n</body>\r\n</html>\r\n```', '2019-11-07 21:33:50'),
(40, 'upload/20191107133538d41d8cd98f00b204e9800998ecf8427e.jpeg', 'dvefsbvet', '【JavaScript】JavaScriptってなに？', 'いつもご覧いただきありがとうございます。 \r\n本日は「JavaScriptとは何か」について書いていきます。\r\n\r\nJavaScriptとは\r\n極論、Webのデザインを動的なものにできる言語です。\r\n(最近は、サーバ上で動作する Node.js もあり、アプリケーション開発もできます。)\r\n\r\nJavaScriptの歴史\r\nインターネットは1990年代から盛んになり始めた技術ですが、JavaScriptの登場も同時期です。\r\n黎明期にはJavaScriptのせいでブラウザ動作が重くなることもありましたが、\r\n環境が整ってリッチコンテンツ（視覚的に華やかな広告など）の提供が可能になってからは、\r\nJavaScriptが大いに活躍してきました。\r\n\r\nECMAとは\r\nJavaScriptの黎明期においては、異なるブラウザで互換性が無いことが問題となっていました。\r\nそこでECMAインターナショナルという機関のもとで標準化がなされます。\r\nすなわち、ECMAインターナショナルによって「JavaScriptの書き方」が決められました。\r\nこれをECMAScriptと呼びます。現在はJavaScriptというとECMAScriptで書かれることが一般的です。\r\n\r\nJavaとは全く異なる言語\r\nJavaという有名なプログラミング言語があります。\r\nJavaとJavaScriptは兄弟のようなものかと考えてしまう人がいますが、\r\n全くの別言語です。 メロンとメロンパンくらい違うものと考えておきましょう。\r\n\r\nJavaとJavaScriptではメインで使用される分野が異なります。\r\nJavaは業務システムなどのサーバーサイド側で使用されます。\r\nつまり、データの保管や複雑な処理を行う「裏側」がメインです。\r\nJavaScriptは前述の通り、主にフロントエンド、\r\nつまり「見た目」の部分で活躍することが多いプログラミング言語です。\r\n\r\n「JavaScriptとは何か」についてかんたんにまとめさせていただきました。\r\n  最後までご覧いただきありがとうございました。  \r\n\r\n編集リクエスト', '2019-11-07 21:35:38'),
(41, 'upload/20191107133610d41d8cd98f00b204e9800998ecf8427e.jpeg', 'dvsdvrv', '【JavaScript】JavaScriptを初めから', '備忘録チックに学習したことをまとめます。ES2015対応。\r\n実行はnode.jsでやっています。node.jsの環境構築はこちら\r\n\r\nHello World\r\nhw.js\r\nconsole.log(\"Hello World!\");\r\n// Hello World!\r\n変数\r\nvar\r\nvariable 文は変数を宣言し、任意でそれをある値に初期化する。\r\n\r\nvar.js\r\nvar message;\r\nmessage = \"Hello World!\";\r\nconsole.log(message);\r\n// Hello World!\r\nlet\r\nlet 文はブロックスコープの局所変数を宣言し、任意でそれをある値に初期化する。\r\nvarはブロック外にもスコープを持つが、letはブロック外にスコープを持たない。\r\n\r\nlet.js\r\nif(true){\r\n    var message = \"in block var\";\r\n    console.log(message);\r\n    // in block var\r\n}\r\nconsole.log(message); // ここでもmessageが参照できる。\r\n// in block var\r\n\r\nif(true){\r\n    let message2 = \"in block let\";\r\n    console.log(message2);\r\n    // in block let\r\n}\r\nconsole.log(message2); // ここではmessage2は参照できない\r\n// ここでReferenceError\r\nlet2.js\r\nvar message = \"out block var\"\r\nif(true){\r\n    var message = \"in block var\"; // 同じ変数となるため、上書きされてしまう。\r\n    console.log(message);\r\n    // in block var\r\n}\r\nconsole.log(message);\r\n// in block var\r\n\r\nvar message2 = \"out block let\"\r\nif(true){\r\n    let message2 = \"in block let\"; // ブロック内の固有の変数となる。\r\n    console.log(message2);\r\n    // in block let\r\n}\r\nconsole.log(message2);\r\n// out block let\r\nデータ型\r\n文字列\r\nvar str = \"string\";\r\n数値\r\nvar num = 100;\r\nオブジェクト（関数・組み込みオブジェクト）\r\nvar obj = {hoge:\"ho\", fuga:\"fuga\"};\r\nオブジェクト・関数については詳細は後述\r\n\r\nundefined : 定義されていない\r\nnull : なにもない\r\nnullとundefinedの違い\r\nここが参考になった\r\n\r\nテンプレートリテラル\r\n`（バッククォート）を利用することで改行コードなしで記述可。\r\n\r\ntl.js\r\nconsole.log(`line one\r\nline two\r\nline three`);\r\n// line one\r\n// line two\r\n// line three\r\nオブジェクト\r\n関数\r\n無名関数\r\nアロー演算子による記述', '2019-11-07 21:36:10'),
(42, 'upload/20191107133651d41d8cd98f00b204e9800998ecf8427e.png', 'dwvwrvw', 'データベース　用語①', 'データベース用語\r\n1...Datebase\r\n2...table\r\n3...Row\r\n4...column\r\n\r\nこれらを纏めてSQL(Structured Quary Language\r\n\r\nwebサービスを作る際、一つのアプリにデータベースを一つ作っていく。２のtableの中に3のRow(レコード),4のcolumn(フィールド)を複数扱っていく\r\n\r\n図の説明だと\r\nDetaBase\r\n*table\r\n*レコード(テーブルの列)\r\n*フィールド(テーブルの行)', '2019-11-07 21:36:51'),
(43, 'upload/20191107133741d41d8cd98f00b204e9800998ecf8427e.jpeg', 'fvfっsf', 'データベース設計：データベース正規化をする', '最近私はブロックチェーン技術を使うのを休止しました。今、私は昔のバックエンド技術を使用したいと思います。だから、私はデータベースについて復習しました。私はデータベースについて私の知識をリフレッシュしました。\r\n\r\nデータベースとは\r\nデータベースはデータの集まりです。このコレクションはコンピューターシステムに保存されます。データベースはデータを保存するだけでなく、ユーザーがこのデータを操作できるようにします。データベースはデータを保存するだけでなく、ユーザーがこのデータを操作できるようにします。データベースはデータ管理を簡単にします。\r\n\r\nデータベースについてもっと知りたい、このリンクをクリックしてください：https://www.guru99.com/introduction-to-database-sql.html\r\n\r\nデータベース正規化\r\nデータベース正規化は、データベース野中のデータ設計を体系化する方法です。データベースの中の各テーブルは特定のトピックに関するものであり、サポートするトピックのみが含まれているという考え方です。データの繰り返しを排除し、挿入と更新と削除のエラーを回避するために行われます。\r\n\r\n挿入のエラー\r\n特定の事実をまったく記録できない状況があります。ユーザーはNULLを入力するように強制されます。できるだけnullを入力しないでください。\r\n\r\n更新のエラー\r\n同じ情報が複数の行にあります。これらのデータに更新があると、更新によって矛盾が生じる可能性があります。特にデータベースがすでに大きくなっている場合は、ユーザーによる更新が難しくなります。\r\n\r\n削除のエラー\r\n特定の事実を表すデータを削除するには、まったく異なる事実を表すデータを削除する必要があります。ユーザーは削除すべきではない重要なデータを削除する可能性があります。\r\n\r\n正規化のレベル\r\n正規化のレベルは三つがあります。各レベルはあなたのデータベースを組織して最適化します。\r\n\r\n最初の正規形\r\n最初のステップは、情報が最初の正規形になっていることを確認することです。 テーブルが最初の正規形になると、情報の検索、フィルタリング、およびソートが簡単になります。\r\n\r\nデータはデータベーステーブルの中にあります。テーブルには行と列の情報が格納されています。そして、1つ以上の列が各行を一意に識別する。この列は主キーです。\r\n各列にはアトミック値が含まれており、列の繰り返しグループはありません。値がアトミックの場合、値をさらに細分することはできません。\r\nこれが最初の正規形になったテーブルの例です：\r\nimage.png\r\nimage.png\r\n\r\n第二正規形\r\nテーブルを第二正規形に配置するのは、それらを単一の目的に絞り込むためです。これにより、データベース設計が明確になり、更新エラーを排除できます。\r\n\r\nテーブルは最初の正規形でなければなりません。\r\nすべての列は、テーブルの主キーに依存しています。\r\nこれが第二正規形になったテーブルの例です：\r\nimage.png\r\nimage.png\r\n\r\n第三正規形\r\n第三正規形は、各テーブル間の関係を固定します。\r\n\r\nテーブルは第二正規形でなければなりません。\r\n接続あるのデータを持つテーブル間には関係がなければなりません。\r\nこれが第三正規形になったテーブルの例です：\r\nimage.png\r\nimage.png\r\n\r\nまとめ\r\nデータベースにはたくさんデータが含まれています。これらのデータすべてを管理することはとても難しいだ、特にデータ設計が最適化されていない場合です。データ管理は簡単でなければならず、エラーなく行わなければなりません。これは、データがコンピュータシステムのとても大切な部分だからです。データはシステムが正しくそして誠実に機能する必要があるという事実を表しています。そのため、データの整合性を確保するためにデータベースの正規化を行う必要があります。\r\n\r\nソース:\r\nhttps://en.wikipedia.org/wiki/Database\r\nhttps://en.wikipedia.org/wiki/Database_normalization\r\nhttps://www.essentialsql.com/get-ready-to-learn-sql-database-normalization-explained-in-simple-english/\r\nhttps://www.guru99.com/introduction-to-database-sql.html', '2019-11-07 21:37:41'),
(44, 'upload/20191107133835d41d8cd98f00b204e9800998ecf8427e.jpeg', 'dvwrゔぇwrv', 'php.net(PHP公式マニュアル)', 'PHPの効率的な学習法 » 学びの実践 » ウェブ上の資料を活用して学ぶ » php.net(PHP公式マニュアル)\r\n\r\nPHPを上達させるには、公式のマニュアルにしっかりお世話になることです。PHPのマニュアルは、日本語で読めますし、サンプルコードも充実していて、読めば読むほどPHPに詳しくなれます。\r\n\r\n知らない関数について調べるときは、非公式な情報だけでなく、公式マニュアルの関数のページを欠かさずに読むことを強くおすすめします。\r\n\r\n余談ですが、YYPHPの参加者たちで「php.netの中でおすすめのページはどれか」について話したことがあります。そのとき特に話題になったのは、配列関数のページです。「配列系の関数は全て目を通すと信じられないほどはかどる」といった声もありました。PHPは他の言語と比べ、いろんなデータを配列で表現する傾向があるためだと考えられます。加えて、文字列関数についてもよく読んでおくと良いそうです。\r\n\r\n前ページ: ウェブ上の資料を活用して学ぶ\r\n次ページ: PHP: The Right Way', '2019-11-07 21:38:35'),
(45, 'upload/20191107133910d41d8cd98f00b204e9800998ecf8427e.png', 'dvwrv', '[ PHP ] PHPビルトイン webサーバ', 'PHPビルトインについて\r\n会社でPHPビルトインを使用することがあったので、調べてみました :pencil2:\r\n\r\nPHP５.4以降から「ビルトインウェブサーバ」というものが追加されている\r\nPHPとデータベースさえインストールしてあれば、PHPファイルを動かすことができる\r\n簡易的なので、実運用では使用できない（ローカルでの使用）\r\n複数同時に起動はできない\r\nApacheではないので、　.htaccessは使用できない（「ルータースクリプト」が用意されている）\r\n使用方法\r\nコマンド上で、実行したいファイルに移動し以下のコマンドをたたく\r\n\r\ncd path\r\n\r\n$ php -S localhost:8000\r\nphp -S localhost:8000 （数字は任意）\r\nブラウザでhttp://localhost:8000/ にアクセスすると、index.phpが表示される', '2019-11-07 21:39:10'),
(46, 'upload/20191107134052d41d8cd98f00b204e9800998ecf8427e.jpeg', 'dvfvev', '[PHP] PHPでProtocolBuffers', '■概要\r\nPHPでProtocolBuffersを使用した事例があまりないので導入メモ。\r\nオートローダーとしてcomposerを使用する。\r\n\r\n■環境\r\nWindows 7\r\nCentOS 7.4\r\nProtocolBuffers 3.5.\r\nPHP 7.2.2\r\n\r\n■composer設定\r\nCentOSでの作業。\r\n\r\n作業ディレクトリ作成\r\n[~]$ mkdir protocol_buffers\r\n[~]$ cd protocol_buffers\r\ncomposerダウンロード\r\n[protocol_buffers]$ curl -s https://getcomposer.org/installer | php\r\nlsでcomposer.pharがあることを確認。\r\n\r\ncomposer.json作成\r\n[protocol_buffers]$ vi composer.json\r\n{\r\n  \"name\": \"google/protobuf\",\r\n  \"type\": \"library\",\r\n  \"description\": \"proto library for PHP\",\r\n  \"keywords\": [\"proto\"],\r\n  \"homepage\": \"https://developers.google.com/protocol-buffers/\",\r\n  \"license\": \"BSD-3-Clause\",\r\n  \"require\": {\r\n    \"php\": \">=5.5.0\"\r\n  },\r\n  \"require-dev\": {\r\n    \"phpunit/phpunit\": \">=4.8.0\"\r\n  },\r\n  \"autoload\": {\r\n    \"psr-4\": {\r\n      \"Google\\\\Protobuf\\\\\": \"src/Google/Protobuf\",\r\n      \"GPBMetadata\\\\Google\\\\Protobuf\\\\\": \"src/GPBMetadata/Google/Protobuf\",\r\n      \"\": \"tests/generated\",\r\n      \"GPBMetadata\\\\\": \"src/GPBMetadata/\",\r\n      \"MasterData\\\\\": \"src/MasterData/\"\r\n    }\r\n  }\r\n}\r\nautoload.php生成\r\n[protocol_buffers]$ php composer.phar dump-autoload\r\nprotocol_buffersフォルダ直下にvenderフォルダが生成される。\r\nprotocol_buffersを使用するソースでvender/autoload.phpをrequireして使用する。\r\n\r\n■ProtocolBuffers設定\r\nWindowsとCentOSでの作業。\r\n\r\nProtocolBuffersソース配置\r\n以下のソースをダウンロード。\r\nhttps://github.com/google/protobuf/archive/master.zip\r\nprotobuf-master\\php の srcフォルダをprotocol_buffersフォルダ直下にコピー。\r\n\r\n■スキーマファイルのコンパイル\r\nWindowsでの作業。\r\n\r\nスキーマファイルの作成\r\n以下の内容でスキーマファイルweapon_master_data.protoを作成。\r\n\r\nsyntax = \"proto3\";\r\npackage MasterData;\r\nmessage Weapon {\r\n  int32 id = 1;\r\n  string name = 2;\r\n  double damage = 3;\r\n  int32 sell = 4;\r\n}\r\nmessage WeaponMaster {\r\n  repeated Weapon records = 1;\r\n}\r\nスキーマファイルをコンパイル\r\nコンパイラ（protoc.exe）の準備\r\n　https://developers.google.com/protocol-buffers/docs/downloads\r\n　2018/02/02時点では「protoc-3.5.1-win32.zip」が対象。\r\n　protoc-3.5.1-win32.zip\\bin\\にprotoc.exeがある。\r\n\r\nコンパイル\r\n　protoc.exe のあるフォルダにweapon_master_data.protoを置いて\r\n\r\nprotoc -I=. --php_out=. weapon_master_data.proto\r\n　以下のファイルがフォルダと共に生成される。\r\n　　GPBMetadata\\WeaponMasterData.php\r\n　　MasterData\\Weapon.php\r\n　　MasterData\\WeaponMaster.php\r\n\r\n■コンパイルしたファイルの配置\r\nWindowsとCentOSでの作業。\r\nGPBMetadata\\WeaponMasterData.phpをCentOSのprotocol_buffers\\src\\GPBMetadata\\に配置。\r\nMasterDatafフォルダをCentOSのprotocol_buffers\\src\\に配置。\r\n\r\n■テストコード\r\nCentOSでの作業。\r\n\r\nシリアライズしたデータの書き込み\r\n[protocol_buffers]$ vi save_test.php\r\n<?php\r\n$autoloader = require_once \"vendor/autoload.php\";\r\n\r\n// Weaponクラス配列\r\n$weaponList = null;\r\n\r\n// WeaponMasterクラス生成\r\n$weaponMaster = new MasterData\\WeaponMaster();\r\n// repeated fieldsを使用する際にはgetterを使用する。\r\n$records = $weaponMaster->getRecords();\r\n\r\n// テストデータ作成\r\nfor ($i = 0; $i < 10; $i++)\r\n{\r\n    $weaponList[] = array(\r\n        \'id\' => $i,\r\n        \'name\' => \"WEAPON_{$i}\",\r\n        \'damage\' => $i + 100,\r\n        \'sell\' => $i + 1000\r\n    );\r\n}\r\n\r\n// 入力パラメータを登録\r\nforeach ($weaponList as $dt)\r\n{\r\n    // Weaponクラス生成\r\n    $weapon = new MasterData\\Weapon();\r\n    // パラメータ登録\r\n    $weapon->setId($dt[\'id\']);\r\n    $weapon->setName($dt[\'name\']);\r\n    $weapon->setDamage($dt[\'damage\']);\r\n    $weapon->setSell($dt[\'sell\']);\r\n\r\n    // Weaponクラス配列に登録\r\n    $records[] = $weapon;\r\n}\r\n\r\n// WeaponMaserクラスに登録\r\n$weaponMaster->setRecords($records);\r\n\r\n// シリアライズ\r\n$packed = $weaponMaster->serializeToString();\r\n\r\n// バイナリファイル出力\r\nfile_put_contents(\"weapon_data.bin\", $packed);\r\nシリアライズデータを読み込んでデシリアライズ\r\n[protocol_buffers]$ vi load_test.php\r\n<?php\r\n$autoloader = require_once \"vendor/autoload.php\";\r\n\r\n// WeaponMasterクラス生成\r\n$weaponMaster = new MasterData\\WeaponMaster();\r\n\r\n// バイナリファイル読み込み\r\n$filename = \"weapon_data.bin\";\r\n$handle = fopen($filename, \"rb\");\r\n$contents = fread($handle, filesize($filename));\r\nfclose($handle);\r\n\r\n// デシリアライズ\r\n$weaponMaster->mergeFromString($contents);\r\n\r\n// デバッグプリント\r\n$records = $weaponMaster->getRecords();\r\nforeach ($records as $rec)\r\n{\r\n    $id = $rec->getId();\r\n    $name = $rec->getName();\r\n    $damage = $rec->getDamage();\r\n    $sell = $rec->getSell();\r\n\r\n    print_r(\"id:{$id}, name:{$name}, damage:{$damage}, sell:{$sell}\\n\");\r\n}\r\n■実行\r\nCentOSでの作業。\r\n\r\nシリアライズ\r\n[protocol_buffers]$ php save_test.php\r\nweapon_data.binが出力される。\r\n\r\n以下のようなエラーが出る場合、PHPのバージョンが古い。\r\n\r\nPHP Parse error:  syntax error, unexpected T_CLASS, expecting T_STRING or T_VARIABLE or \'$\' in /home/xxx/protocol_buffers/src/MasterData/WeaponMaster.php on line 42\r\nデシリアライズ\r\n[protocol_buffers]$ php load_test.php\r\n実行結果', '2019-11-07 21:40:52'),
(47, 'upload/20191107134253d41d8cd98f00b204e9800998ecf8427e.jpeg', 'swvwrvr', '無料で使える公開 API のリスト：48 カテゴリ', 'A collective list of free APIs\r\nAPI Key の登録なし＋無料で株価情報が取れる API ないかなーと探していたら、面白いリストが見つかりました。48 カテゴリにわたり数百もの API がリストされています。545 contributors (2019/11/6 時点) によるまさに集合知（？）ですね。\r\n\r\nGithub: https://github.com/public-apis/public-apis\r\n\r\nA collective list of free APIs for use in software and web development.\r\n\r\nの説明通り、\r\n\r\nAnimals\r\nAnime\r\nAnti-Malware\r\nArt & Design\r\nBooks\r\nなど、どんなデータ？と思うようなカテゴリから、 Geocoding、Jobs、Music まで、全部見ることができていませんがどんなネタにも対応できそうな気がします。\r\n\r\nFinancial Modeling Prep\r\nFinance 系は ここから。今回はとりあえず最新の株価が分かればよかったので、シンプルな Financial Modeling Prep のサービスを使うことにします。参考まで実行例をば。\r\n\r\nMATLAB例\r\nsingleQuote.m\r\nsymbol = \"amzn\";\r\nurl = \"https://financialmodelingprep.com/api/company/real-time-price/\" + symbol + \"?datatype=json\";\r\njsontxt = webread(url)\r\nvalue = jsondecode(jsontxt)\r\n結果はこんな形。\r\n\r\njsontxt =\r\n    \'{\r\n         \"symbol\": \"AMZN\",\r\n         \"price\": 1800.57,\r\n         \"updated_at\": \"2019-11-05 16:32:13\"\r\n     }\'\r\n\r\nvalue = \r\n  struct with fields:\r\n\r\n        symbol: \'AMZN\'\r\n         price: 1.8006e+03\r\n    updated_at: \'2019-11-05 16:32:13\'\r\nwebread の出力は文字列（char) ですが、jsondecode を使うと構造体になります。R2019b 使いました。\r\n\r\nJavaScript例\r\nsingleQuote.html\r\n<!DOCTYPE html>\r\n\r\n<head>\r\n    <title>getting quotes</title>\r\n\r\n<body>\r\n    <h1>getting quotes</h1>\r\n    <p id=\"quotes\"></p>\r\n    <p id=\"updated_at\"></p>\r\n\r\n    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\r\n    <script>\r\n        $(document).ready(function () {\r\n            let symbol = \'amzn\';\r\n            let callback = function (data) {\r\n                let strPrice = data.price.toFixed(2).replace(/\\d(?=(\\d{3})+\\.)/g, \'$&,\');\r\n                // From https://stackoverflow.com/questions/149055/how-can-i-format-numbers-as-currency-string-in-javascript\r\n\r\n                document.getElementById(\'quotes\').textContent = data.symbol + \": $\" + strPrice;\r\n                document.getElementById(\'updated_at\').textContent = data.updated_at + \'(UTC)\';\r\n                alert(\'Stock Price: $\' + strPrice + \' at \' + data.updated_at + \'(UTC)\');\r\n            };\r\n\r\n            // https://financialmodelingprep.com/developer/docs/realtime-stock-quote-api\r\n            let url = \"https://financialmodelingprep.com/api/company/real-time-price/\" + symbol + \"?datatype=json\";\r\n            $.getJSON(url, callback);\r\n        });\r\n    </script>\r\n</body>\r\n</head>\r\nCapture.PNG\r\n\r\nこんな感じ。使いやすそう。', '2019-11-07 21:42:53'),
(48, 'upload/20191107134411d41d8cd98f00b204e9800998ecf8427e.jpeg', 'rgsfbvefs', 'Webデザインテンプレート', '作ったWebデザインのテンプレートを提供いたします。\r\n1日1デザインを目標にコミットしていく予定です。\r\n\r\n基本はHTMLとCSSの静的デザインに多少jQueryで動きをつけています。\r\n\r\nデータの取り方\r\nMac: ターミナルから\r\nWin: コマンドラインから\r\n下記コマンドを実行してください。\r\n\r\nターミナルorコマンドライン\r\n# ダウンロードしたい場所に移動\r\ncd Desktop\r\n\r\n# データをクローン（コピー）\r\ngit clone https://d-mori-570415@bitbucket.org/d-mori-570415/webdesigntemplate.git', '2019-11-07 21:44:11'),
(49, 'upload/20191107134507d41d8cd98f00b204e9800998ecf8427e.jpeg', 'dwvrfb', 'webデザインストック用(1)', 'こんにちは、かけるです。\r\n今回は、ウェブデザインのストック用に作ったものを記事にしたいと思う。\r\n\r\n今回作ったのはこれです。\r\n\r\nそうパララックスです。\r\n自分のWebサイトに「パララックス効果」を取り入れたいと考えたことはありますか？\r\n\r\n「なんだか難しそうだな…」とか、「実装が面倒くさそうだ…」のようなイメージをもし持っているのであれば、今回、紹介するJavaScriptライブラリを一度使ってみてはどうでしょうか。\r\n\r\nそれがRellax.js である。\r\n\r\nパララックスとは\r\nまずパララックスについて軽くまとめておこうと思う。\r\nパララックスとは、視差効果のことです。\r\nWebデザインにおけるパララックスはスクロールなどの動作に応じて、複数のレイヤー（層）にある要素を異なるスピードで動かすことで、「立体感や奥行きを演出」、「フェード・拡大縮小・回転などの視覚的エフェクト」を演出する手法を指します。\r\n\r\n私は、iPhone8を使用しているのですが、ホーム画面で携帯を傾けるとアプリが少しずれるように見えるのもパララックスなのかなと思います。\r\n\r\nRellax.js\r\n2019-04-10 (2).png\r\n遅くなりましたが、このライブラリーについて書いていく。\r\n\r\nindex.js\r\nvar rellax = new Rellax(\'.rellax\');\r\nindex.html\r\n<div class=\"rellax\" data-rellax-speed=\"-7\">\r\n  I’m extra slow and smooth\r\n</div>\r\nこれだけである。\r\ndata-rellax-speedはスピードを変換させるものです。10から-10で指定することができ、より効果的なものを作れるとおもいます。\r\n\r\n応用編\r\n今回作ったものがその応用である。少し手数が増えるが面白いものができるので試していただきたい。\r\nまず、Photoshopでいい具合に切り取り、三つの素材を作る。\r\nevening-3.jpg\r\nevening-2.png\r\nevening-1.png\r\nこんな感じに。\r\n\r\nindex.js\r\nvar rellax = new Rellax(\'.rellax\');\r\nindex.html\r\n<div class=\"body\">\r\n<h1 class=\"rellax sunset ab\" data-rellax-speed=\"8\">SUN SET</h1>\r\n<!--これは1番目の写真-->\r\n<img src=\"evening-3.jpg\" class=\"ab back-3\"> \r\n<!--これは2番目の写真-->\r\n<img src=\"evening-2.png\" class=\"ab back-2 rellax\" data-rellax-speed=\"4\">\r\n<!--これは3番目の写真-->\r\n<img src=\"evening-1.png\" class=\"ab back-1 rellax\" data-rellax-speed=\"8\">\r\n</div>\r\n<div class=\"bac\">\r\n    <div class=\"box rellax\" data-rellax-speed=\"3\">\r\n        <h1 class=\"rellax\" data-rellax-speed=\"2\">\r\n            What is SUN SET\r\n        </h1>\r\n        <p class=\"rellax\" data-rellax-speed=\"2\">\r\n                Sunset, also known as sundown, is the daily disappearance of the Sun below the horizon due to Earth\'s rotation. As viewed from the Equator, the equinox Sun sets exactly due west in both spring and fall. As viewed from the middle latitudes, the local summer Sun sets to the northwest for the Northern Hemisphere, but to the southwest for the Southern Hemisphere.\r\n        </p>\r\n    </div>\r\n</div>\r\n\r\nindex.css\r\n.body {\r\n    position: relative;\r\n    height:650px;\r\n}\r\n\r\n.ab{\r\n    position:absolute;\r\n\r\n}\r\n.sunset{\r\n    z-index:10;\r\n    top:0;\r\n    bottom:0;\r\n    font-size:5rem;\r\n    left:0;\r\n    height:200px;\r\n    mix-blend-mode: overlay;\r\n    right:0;\r\n    margin:auto;\r\n    text-align: center;\r\n}\r\n.bac{\r\n    height:1000px;\r\n    width:100%;\r\n    background:#130b09;\r\n}\r\n.box{\r\n    max-width:90%;\r\n    width:500px;\r\n    color:white;\r\n    text-align:justify\r\n    position: relative;\r\n    z-index: 100;\r\n    margin:auto;\r\n    height:auto;\r\n}\r\n.box p{\r\n    color:white;\r\n    line-height:1.5;\r\n}\r\nコードはこんな感じ\r\nJavascriptは触っておらず、htmlとcssを編集するだけでこのようなものを作れてしまうので、便利です。\r\n\r\nまとめ\r\nいやマジで、Rellax.js便利すぎる。やっぱり自分にはできないと思っていると、無意識的にそのアイデア自体が除外されてしまうので、できないものをできるようにしていくことは重要だと思う今日この頃でした。ありがとうございます。', '2019-11-07 21:45:07'),
(50, 'upload/20191107134547d41d8cd98f00b204e9800998ecf8427e.jpeg', 'fb rhgf', 'WEBデザイン仕様チェックリスト', 'デザイナーがWEBデザインを作ってくれたタイミングで、ここはチェック・質問・詰めておきたいというリスト。\r\nずっと使えるなと思ってリスト化しました。\r\n\r\n普段はSketchでデザイン、Ruby on Rails・SCSSで作って、AWSのホスティングするパターンが多いので、全体的にそんな前提になっています。\r\n\r\n画面幅ごとの挙動。\r\nmedia queryとか込みでどう実装するか考える。グリッドシステムの挙動など。\r\n比で指定されるべきところはどこか（特にスマホ版）逆に固定長で作るところはどこか\r\n画面幅が狭まったときにテキストが縦に長くなる個所がないか確認する。その場合デザインが崩れないか確認する。\r\nSEO\r\nどこにどのHTMLエレメントを当てるのか（特にHタグ）\r\ntitle、description、canonical、パンくず、\r\n仕様面\r\nDB叩いてそうなところは叩き方を確認する。\r\nリンクが張られている領域を全て洗い出す。文字なのか領域なのか、忘れてる場所がないか。\r\nposition: fixedな所がないか確認する。\r\n押したら動きを見せる個所がないか確認する。ここ実は開きます的な。Sketch上ではわかりにくいため確認したい。\r\n全ページにフラッシュメッセージが出せるようになっている必要がある（という前提で作ったほうが良い）。error、notice、successの3種類\r\nスピーディーに実装するために\r\nfont-awsmとかでズルして作れる要素あったら教えてもらう\r\n何度も使っている色を全部洗い出してSASS|SCSSのVariableに入れらるようにする\r\n使いまわしてるデザイン表現を洗い出す（角丸の大きさ、色、フォント、文字サイズ）\r\nSketchでくれる場合は、画像書き出しようのページをつくって、画像1枚毎にアートボードを作って欲しい。一括で書き出せるようになり、便利。\r\n画像を全部書き出してS3に入れて、開発者がURLで使えるようにする。retina対応で2x（と3x）も作る。\r\nborderやpadding、marginがどっちに着くイメージなのか確認する。できるだけ使いまわしやすいようにする。\r\nその他\r\nフォントサイズに関して、親要素に対する比率でつくっているところがある場合確認する。\r\n表示数が変動するものは、変動したときの挙動を確認する。数字の桁数が変動する、文字数の増減、値に応じて星が増えるなど。増えすぎる場合（レイアウト崩れ）、0になる場合の表示を確認する。\r\nユーザー側が画像アップロードする場合、サイズが大きい場合、小さい場合にどうなるかを確認する。（記事中の画像など）\r\ndivの構造作る\r\nfaviconは用意されているか。\r\nOGPはどうするか。画像はページごとに動的か全ページ固定か、必要なサイズの画像が用意されているか。\r\nプレースホルダーはどうするか。画像がない場合（サムネなど）\r\nテキストで横着してpxがわからないようになっている個所はないか。グローバルメニューを 項目1 | 項目2 | 項目3 | 項目4 みたいにテキストでデザインされると幅がわからない。\r\n画像の書き出しは誰がするのか。\r\nけっこう抜け漏れあるとおもうので、是非コメントで確認項目の追加をお願いします。', '2019-11-07 21:45:47'),
(51, 'upload/20191107134635d41d8cd98f00b204e9800998ecf8427e.jpeg', 'hgnbv', 'PHP, PHP-FPMの各種インストール方法とEOLまとめ', 'はじめに\r\nPHPの各種インストール方法とそれぞれのEOLを纏めてみます。\r\nEOLは無償でパッチ提供が継続されるであろう期日とし、各提供者が定義している個別のサポート名称や内容をあまり考慮していません。\r\n\r\nサマリ\r\n導入方法	OS	PHP	EOL	参考\r\nOS標準	CentOS6	5.3.3	2020-11-30	1 2\r\nOS標準	CentOS7	5.4.16	2024-06-30	1 2\r\nSCL	CentOS6,7	5.4	2016-10	3 4 5\r\nSCL	CentOS6,7	5.5	2016-10	3 4 5\r\nSCL	CentOS6,7	5.6	2018-04	3 4 5\r\nSCL	CentOS6,7	7.0	2019-11	3 4 5\r\nSCL	CentOS7	7.1	2019-10	3 5\r\nSCL	CentOS7	7.2	2020-11	3 5\r\nAppStream	CentOS8	7.2.11	2021-05	6 7\r\nOS標準	Debian7	5.4	2019-05-01	8\r\nOS標準	Debian8	5.6	2020-06-30	8\r\nOS標準	Debian9	7.0	2022-xx-xx	8\r\nOS標準	Debian10	7.3	202x-xx-xx	8\r\nOS標準	Ubuntu14.04	5.5	2019-04	9\r\nOS標準	Ubuntu16.04	7.0	2021-04	9\r\nOS標準	Ubuntu18.04	7.2	2023-04	9\r\nその他	-	5.0	2005-09-05	10 11\r\nその他	-	5.1	2006-08-24	10 11\r\nその他	-	5.2	2011-01-06	10 11\r\nその他	-	5.3	2014-08-14	10 11\r\nその他	-	5.4	2015-09-03	10 11\r\nその他	-	5.5	2016-07-21	10 11\r\nその他	-	5.6	2018-12-31	10 11\r\nその他	-	7.0	2019-01-10	10 11\r\nその他	-	7.1	2019-12-01	10 11\r\nその他	-	7.2	2020-11-30	10 11\r\nその他	-	7.3	2021-12-06	10 11\r\n各種導入方法\r\nOS標準\r\nCentOS\r\nCentOS6 PHP\r\nCentOS6 PHP-FPM\r\nCentOS7 PHP\r\nCentOS7 PHP-FPM\r\nDebian\r\nDebian7 PHP\r\nDebian7 PHP-FPM\r\nDebian8 PHP\r\nDebian8 PHP PHP-FPM\r\nDebian9 PHP\r\nDebian9 PHP PHP-FPM\r\nDebian10 PHP\r\nDebian10 PHP PHP-FPM\r\nUbuntu\r\nUbuntu14.04 PHP\r\nUbuntu14.04 PHP-FPM\r\nUbuntu16.04 PHP\r\nUbuntu16.04 PHP,PHP-FPM\r\nUbuntu18.04 PHP\r\nUbuntu18.04 PHP,PHP-FPM\r\nCentOS + Software Collections(SCL)\r\nCentOS6\r\nPHP7.0\r\nPHP-FPM7.0\r\nCentOS7\r\nPHP5.4\r\nPHP5.5\r\nPHP5.6\r\nPHP7.0\r\nPHP7.1\r\nPHP7.2\r\nPHP-FPM5.4\r\nPHP-FPM5.5\r\nPHP-FPM7.0\r\nPHP-FPM7.1\r\nPHP-FPM7.2\r\nCentOS + Application Stream(AppStream)\r\nCentOS8\r\nPHP7.2,PHP-FPM7.2\r\nCentOS + Third Party Repositories\r\nIUS Community Repo\r\nCentOS6\r\nPHP7.1\r\nPHP-FPM7.1\r\nCentOS7\r\nPHP7.1\r\nPHP7.2\r\nPHP-FPM7.2\r\nPHP-FPM7.2\r\nRemi Repository\r\nCentOS6\r\nPHP5.4\r\nPHP5.5\r\nPHP5.6\r\nPHP7.0\r\nPHP7.1\r\nPHP7.2\r\nPHP7.3\r\nPHP-FPM5.4\r\nPHP-FPM5.5\r\nPHP-FPM5.6\r\nPHP-FPM7.0\r\nPHP-FPM7.1\r\nPHP-FPM7.2\r\nPHP-FPM7.3\r\nCentOS7\r\nPHP5.4\r\nPHP5.5\r\nPHP5.6\r\nPHP7.0\r\nPHP7.1\r\nPHP7.2\r\nPHP7.3\r\nPHP-FPM5.4\r\nPHP-FPM5.5\r\nPHP-FPM5.6\r\nPHP-FPM7.0\r\nPHP-FPM7.1\r\nPHP-FPM7.2\r\nPHP-FPM7.3\r\nCentOS8\r\nPHP7.2,PHP-FPM7.2\r\nPHP7.3,PHP-FPM7.3\r\nRed Hat Enterprise Linux Life Cycle - Red Hat Customer Portal ↩\r\n\r\nAbout/Product - CentOS Wiki ↩\r\n\r\nRed Hat Software Collections Product Life Cycle - Red Hat Customer Portal ↩\r\n\r\nIndex of /centos/6/sclo/x86_64 ↩\r\n\r\nIndex of /centos/7/sclo/x86_64 ↩\r\n\r\nRed Hat Enterprise Linux 8 Application Streams Life Cycle - Red Hat Customer Portal ↩\r\n\r\nIndex of /centos/8/AppStream/x86_64 ↩\r\n\r\nDebianReleases - Debian Wiki ↩\r\n\r\nReleases - Ubuntu Wiki ↩\r\n\r\nPHP: Unsupported Branches ↩\r\n\r\nPHP: Supported Versions ↩\r\n\r\n', '2019-11-07 21:46:35'),
(52, 'upload/20191107134722d41d8cd98f00b204e9800998ecf8427e.jpeg', 'hrnbdv', 'ｐｈｐショートカット', '検索\r\nshift２度押し\r\n\r\n行のブックマーク\r\nCtrl + F11\r\n\r\n自動成型系\r\n\r\nfunction Hoge　\r\nCtrl + Shift + Enter\r\n\r\n自動成型系\r\nCtrl + Alt + L\r\n設定場所\r\n[Preferences] - [Editor] - [Code Style] - [PHP]\r\n\r\n足りないパーツ自動生成\r\nゲッターセッターオーバーライド\r\nAlt + insert\r\n\r\nHTML操作\r\nコード一括コメントアウト\r\nCode→Comment with Line Comment を選択すると\r\n\r\nクラス・メソッドドキュメントを表示\r\ncontrol + j\r\n\r\n選択した行を特定のタグで囲む\r\ncommand + alt + t\r\nhttps://breaktimes.hatenablog.com/entry/2016/03/11/083648', '2019-11-07 21:47:22'),
(53, 'upload/20191107134807d41d8cd98f00b204e9800998ecf8427e.jpeg', 'mjtndb', 'ノーコードでBotが作れる Power Virtual Agents の Action が最強すぎて、素敵すぎたので、使い方をまとめました', '前回の続きです\r\n前回記事はこちらです\r\nつたない記事にもかかわらず、トレンドに乗るほど多くの「いいね」をいただき、ありがとうございます！\r\nPower Automate と並び、非常に素晴らしい製品であることは間違いないので\r\nこれだけのいいねを頂けたのではないかと思っております。\r\nまた、本日Facebookにて、ユーザーグループを作成させていただきましたが\r\nそちらも、わずか1日足らずで100名以上の方が参加するという盛況っぷり。\r\nほんとありがたいものです！\r\nご参加いただけていない方はぜひこちらのリンク先よりご参加ください！\r\nJapan Power Virtual Agents User Group\r\n\r\nさて、今回は前回の続きです。\r\nBotを作ることは説明しましたが、ただそれだけだと面白くありません。\r\nPower Virtual Agents は Power Platform の一員。\r\n連携できなければ意味がいないのです。\r\n\r\n今回はその連携に使用する「Action」についてご説明します。\r\n\r\nActionの作り方\r\nMicrosoft の Docs に既に上がっておりますが\r\nこちらの記事をご覧いただくと、あらかた書いております。\r\nAdd actions to your bot using Power Automate\r\n\r\n基本的な作り方はそちらをご確認いただくとして、いくつかわかりづらいところをピックアップします。\r\n\r\nFlowはソリューション内で作ること\r\nソリューションの中で作成したPower Automate Flowのみ使用可能です。\r\n\r\nimage.png\r\n\r\nimage.png\r\n\r\nFlowとPower Virtual Agentsとの関係性\r\n図解すると以下のようになっています。\r\nimage.png\r\n\r\nUser Responses でユーザーが入力する文字列を「tenkiinput」として変数に格納\r\nActionにて「tenkiinput」を、Flowのスキーマにて指定している「State」プロパティに渡す\r\nFlowにて、実行したい処理に「State」プロパティの値を渡す\r\n実行した結果は応答のプロパティとして「tenki」に格納する\r\nActionのOutputとして、「tenki」変数が自動生成されているので、その値を次の処理に渡す\r\nという感じです。\r\n\r\nなので、Flowを作成するときにJSONスキーマを宣言する必要はありますが\r\nこれさえ理解できれば、あらゆるクラウドサービスとの連携や\r\nPower Automate UI Flowを使用した、Desktopアプリの処理への引き渡しなど\r\n無限の可能性を秘めたパワフルなBotとして使用できるはずです！\r\n\r\nぜひ皆さんもご自身でスペシャルなBotをつくってみてください！\r\n\r\nお困りの際には、ぜひユーザーグループまで！\r\n\r\nSpecial Thanks\r\n@yugoes1021 縄神様', '2019-11-07 21:48:07'),
(54, 'upload/20191107134846d41d8cd98f00b204e9800998ecf8427e.jpeg', 'hfgdfhsgbv', 'PHP7.1からprivate constが書ける', 'タイトル落ちですが、以下のような実装でお悩みの方の助けになればと思います。\r\n外部から参照されることなく、またイミュータブルなものがほしいとき、\r\n\r\nclass Something {\r\n    private $age = \'永遠の17歳\';\r\n\r\n    public function changeAge(): void\r\n    {\r\n        $this->age = \'30歳\';\r\n    }\r\n}\r\n外部からは参照できませんが内部から変更可能なので実装次第では変化してしまう可能性があります。\r\n\r\nclass Something {\r\n    private function age(): string\r\n    {\r\n        return \'永遠の17歳\';\r\n    }\r\n}\r\nprivate functionが値を返すことでイミュータブルが守られますが、個人的に好きではない。\r\n\r\nっていうかそれ定数\r\nclass Something {\r\n    private const AGE = \'永遠の17歳\';\r\n}\r\nPHP7.1からはconstのアクセス修飾子にprivateが書けるようになっていたので無事外部から参照されることなく、またイミュータブルなものが実現できました。\r\nhttps://www.php.net/manual/ja/language.oop5.constants.php#language.oop5.basic.class.this\r\n\r\n', '2019-11-07 21:48:46');

-- --------------------------------------------------------

--
-- テーブルの構造 `giita_user_table`
--

CREATE TABLE `giita_user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `giita_user_table`
--

INSERT INTO `giita_user_table` (`id`, `name`, `lid`, `lpw`, `indate`) VALUES
(2, '宮本', '1111', 'aaaa', '2019-11-04 00:00:00');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `name`, `url`, `comment`, `indate`) VALUES
(1, '独習PHP 第3版 ', 'https://www.amazon.co.jp/独習PHP-第3版-山田祥寛-ebook/dp/B01FH3KVNU/ref=sr_1_2?__mk_ja_JP=カタカナ&keywords=PHP&qid=1570265615&sr=8-2', 'Book１', '2019-10-05 17:54:23'),
(2, 'PHPフレームワーク Laravel入門', 'https://www.amazon.co.jp/PHPフレームワーク-Laravel入門-掌田津耶乃-ebook/dp/B07CLLW4MX/ref=sr_1_5?__mk_ja_JP=カタカナ&keywords=PHP&qid=1570265615&sr=8-5', 'Book2', '2019-10-05 17:56:48'),
(3, 'よくわかるPHPの教科書', 'https://www.amazon.co.jp/%E3%82%88%E3%81%8F%E3%82%8F%E3%81%8B%E3%82%8BPHP%E3%81%AE%E6%95%99%E7%A7%91%E6%9B%B8-%E3%80%90PHP7%E5%AF%BE%E5%BF%9C%E7%89%88%E3%80%91-%E3%81%9F%E3%81%AB%E3%81%90%E3%81%A1%E3%81%BE%E3%81%93%E3%81%A8/dp/4839964688/ref=sr_1_4?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=PHP&qid=1570265615&sr=8-4', 'Book3', '2019-10-06 16:40:34'),
(4, '初めてのPHP 単行本', 'https://www.amazon.co.jp/%E5%88%9D%E3%82%81%E3%81%A6%E3%81%AEPHP-David-Sklar/dp/4873117933/ref=sr_1_11?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=PHP&qid=1570265615&sr=8-11', 'Book4', '2019-10-09 15:42:26'),
(5, 'スラスラわかるPHP', 'https://www.amazon.co.jp/%E3%82%B9%E3%83%A9%E3%82%B9%E3%83%A9%E3%82%8F%E3%81%8B%E3%82%8BPHP-%E5%BF%97%E7%94%B0-%E4%BB%81%E7%BE%8E/dp/4798125806/ref=sr_1_12?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=PHP&qid=1570265615&sr=8-12', 'Book5', '2019-10-09 15:44:25'),
(9, 'パーフェクトPHP', 'https://www.amazon.co.jp/%E3%83%91%E3%83%BC%E3%83%95%E3%82%A7%E3%82%AF%E3%83%88PHP-%E5%B0%8F%E5%B7%9D%E9%9B%84%E5%A4%A7-ebook/dp/B00P0UDWQY/ref=sr_1_13?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=PHP&qid=1570265615&sr=8-13', 'Book6', '2019-10-09 15:46:37'),
(10, 'PHPフレームワーク Laravel入門', 'https://www.amazon.co.jp/PHP%E3%83%95%E3%83%AC%E3%83%BC%E3%83%A0%E3%83%AF%E3%83%BC%E3%82%AF-Laravel%E5%85%A5%E9%96%80-%E6%8E%8C%E7%94%B0%E6%B4%A5%E8%80%B6%E4%B9%83-ebook/dp/B07CLLW4MX/ref=sr_1_5?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=PHP&qid=1570265615&sr=8-5', 'Book7', '2019-10-09 23:47:45'),
(11, '気づけばプロ並みPHP 改訂版', 'https://www.amazon.co.jp/%E6%B0%97%E3%81%A5%E3%81%91%E3%81%B0%E3%83%97%E3%83%AD%E4%B8%A6%E3%81%BFPHP-%E6%94%B9%E8%A8%82%E7%89%88-%E3%82%BC%E3%83%AD%E3%81%8B%E3%82%89%E4%BD%9C%E3%82%8C%E3%82%8B%E4%BA%BA%E3%81%AB%E3%81%AA%E3%82%8B-%E8%B0%B7%E8%97%A4-%E8%B3%A2%E4%B8%80/dp/4865940650/ref=sr_1_1?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=PHP&qid=1570265615&sr=8-1', 'Book8', '2019-10-10 14:19:09'),
(12, '1冊ですべて身につくHTML & CSSとWebデザイン入門講座', 'https://www.amazon.co.jp/1%E5%86%8A%E3%81%A7%E3%81%99%E3%81%B9%E3%81%A6%E8%BA%AB%E3%81%AB%E3%81%A4%E3%81%8FHTML-CSS%E3%81%A8Web%E3%83%87%E3%82%B6%E3%82%A4%E3%83%B3%E5%85%A5%E9%96%80%E8%AC%9B%E5%BA%A7-Mana/dp/4797398892/ref=sr_1_1?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=HTML&qid=1570684764&sr=8-1', 'Book9', '2019-10-10 14:20:43'),
(13, 'スラスラわかるHTML＆CSSのきほん 第2版', 'https://www.amazon.co.jp/%E3%82%B9%E3%83%A9%E3%82%B9%E3%83%A9%E3%82%8F%E3%81%8B%E3%82%8BHTML%EF%BC%86CSS%E3%81%AE%E3%81%8D%E3%81%BB%E3%82%93-%E7%AC%AC2%E7%89%88-%E7%8B%A9%E9%87%8E-%E7%A5%90%E6%9D%B1-ebook/dp/B07C4FV2QM/ref=sr_1_2?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=HTML&qid=1570684764&sr=8-2', 'Book10', '2019-10-10 14:21:16'),
(14, '世界一わかりやすい HTML5&CSS3コーディングとサイト制作の教科書', 'https://www.amazon.co.jp/%E4%B8%96%E7%95%8C%E4%B8%80%E3%82%8F%E3%81%8B%E3%82%8A%E3%82%84%E3%81%99%E3%81%84-HTML5-CSS3%E3%82%B3%E3%83%BC%E3%83%87%E3%82%A3%E3%83%B3%E3%82%B0%E3%81%A8%E3%82%B5%E3%82%A4%E3%83%88%E5%88%B6%E4%BD%9C%E3%81%AE%E6%95%99%E7%A7%91%E6%9B%B8-%E8%B5%A4%E9%96%93-%E5%85%AC%E5%A4%AA%E9%83%8E/dp/4297103028/ref=sr_1_3?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=HTML&qid=1570684764&sr=8-3', 'Book11', '2019-10-10 14:21:55'),
(15, 'HTML&CSSとWebデザインが 1冊できちんと身につく本', 'https://www.amazon.co.jp/HTML-CSS%E3%81%A8Web%E3%83%87%E3%82%B6%E3%82%A4%E3%83%B3%E3%81%8C-1%E5%86%8A%E3%81%A7%E3%81%8D%E3%81%A1%E3%82%93%E3%81%A8%E8%BA%AB%E3%81%AB%E3%81%A4%E3%81%8F%E6%9C%AC-%E6%9C%8D%E9%83%A8-%E9%9B%84%E6%A8%B9/dp/4774190640/ref=sr_1_4?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=HTML&qid=1570684764&sr=8-4', 'Book12', '2019-10-10 14:22:36'),
(16, 'いちばんよくわかるHTML5&CSS3デザインきちんと入門 (Design&IDEA) ', 'https://www.amazon.co.jp/%E3%81%84%E3%81%A1%E3%81%B0%E3%82%93%E3%82%88%E3%81%8F%E3%82%8F%E3%81%8B%E3%82%8BHTML5-CSS3%E3%83%87%E3%82%B6%E3%82%A4%E3%83%B3%E3%81%8D%E3%81%A1%E3%82%93%E3%81%A8%E5%85%A5%E9%96%80-Design-IDEA-%E7%8B%A9%E9%87%8E/dp/4797388544/ref=sr_1_5?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=HTML&qid=1570684764&sr=8-5', 'Book13', '2019-10-10 14:23:17'),
(17, 'HTML5/CSS3モダンコーディング フロントエンドエンジニアが教える3つの本格レイアウト ', 'https://www.amazon.co.jp/HTML5-CSS3%E3%83%A2%E3%83%80%E3%83%B3%E3%82%B3%E3%83%BC%E3%83%87%E3%82%A3%E3%83%B3%E3%82%B0-%E3%83%95%E3%83%AD%E3%83%B3%E3%83%88%E3%82%A8%E3%83%B3%E3%83%89%E3%82%A8%E3%83%B3%E3%82%B8%E3%83%8B%E3%82%A2%E3%81%8C%E6%95%99%E3%81%88%E3%82%8B3%E3%81%A4%E3%81%AE%E6%9C%AC%E6%A0%BC%E3%83%AC%E3%82%A4%E3%82%A2%E3%82%A6%E3%83%88-%E3%82%B9%E3%82%BF%E3%83%B3%E3%83%80%E3%83%BC%E3%83%89%E3%83%BB%E3%82%B0%E3%83%AA%E3%83%83%E3%83%89%E3%83%BB%E3%82%B7%E3%83%B3%E3%82%B0%E3%83%AB%E3%83%9A%E3%83%BC%E3%82%B8%E3%83%AC%E3%82%A4%E3%82%A2%E3%82%A6%E3%83%88%E3%81%AE%E4%BD%9C%E3%82%8A%E6%96%B9-%E5%90%89%E7%94%B0%E7%9C%9F%E9%BA%BB-ebook/dp/B0176GNY26/ref=sr_1_6?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=HTML&qid=1570684764&sr=8-6', 'Book14', '2019-10-10 14:25:46'),
(18, '今すぐ使えるかんたんPLUS+ HTML5&CSS3 完全大事典 ', 'https://www.amazon.co.jp/%E4%BB%8A%E3%81%99%E3%81%90%E4%BD%BF%E3%81%88%E3%82%8B%E3%81%8B%E3%82%93%E3%81%9F%E3%82%93PLUS-HTML5-CSS3-%E5%AE%8C%E5%85%A8%E5%A4%A7%E4%BA%8B%E5%85%B8-%E4%BB%8A%E3%81%99%E3%81%90%E4%BD%BF%E3%81%88%E3%82%8B%E3%81%8B%E3%82%93%E3%81%9F%E3%82%93PLUS%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA/dp/4774198110/ref=sr_1_7?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=HTML&qid=1570684764&sr=8-7', 'Book15', '2019-10-10 14:26:35'),
(19, '６ステップでマスターする　「最新標準」HTML CSSデザイン', 'https://www.amazon.co.jp/%EF%BC%96%E3%82%B9%E3%83%86%E3%83%83%E3%83%97%E3%81%A7%E3%83%9E%E3%82%B9%E3%82%BF%E3%83%BC%E3%81%99%E3%82%8B-%E3%80%8C%E6%9C%80%E6%96%B0%E6%A8%99%E6%BA%96%E3%80%8DHTML-CSS%E3%83%87%E3%82%B6%E3%82%A4%E3%83%B3%EF%BC%88%E5%9B%BA%E5%AE%9A%E3%83%AC%E3%82%A4%E3%82%A2%E3%82%A6%E3%83%88%E7%89%88%EF%BC%89-%E3%82%A8%E3%83%93%E3%82%B9%E3%82%B3%E3%83%A0-ebook/dp/B01LCVDD0O/ref=sr_1_8?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=HTML&qid=1570684764&sr=8-8', 'Book16', '2019-10-10 14:27:15'),
(20, 'HTML5&CSS3標準デザイン講座 30LESSONS【第2版】', 'https://www.amazon.co.jp/HTML5-CSS3%E6%A8%99%E6%BA%96%E3%83%87%E3%82%B6%E3%82%A4%E3%83%B3%E8%AC%9B%E5%BA%A7-30LESSONS%E3%80%90%E7%AC%AC2%E7%89%88%E3%80%91-%E8%8D%89%E9%87%8E-%E3%81%82%E3%81%91%E3%81%BF/dp/4798158135/ref=sr_1_9?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=HTML&qid=1570684764&sr=8-9', 'Book17', '2019-10-10 14:27:55'),
(21, 'これからWebをはじめる人のHTML&CSS、JavaScriptのきほんのきほん ', 'https://www.amazon.co.jp/%E3%81%93%E3%82%8C%E3%81%8B%E3%82%89Web%E3%82%92%E3%81%AF%E3%81%98%E3%82%81%E3%82%8B%E4%BA%BA%E3%81%AEHTML-CSS%E3%80%81JavaScript%E3%81%AE%E3%81%8D%E3%81%BB%E3%82%93%E3%81%AE%E3%81%8D%E3%81%BB%E3%82%93-%E3%81%9F%E3%81%AB%E3%81%90%E3%81%A1%E3%81%BE%E3%81%93%E3%81%A8/dp/4839959714/ref=sr_1_10?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=HTML&qid=1570684764&sr=8-10', 'Book18', '2019-10-10 14:28:41'),
(22, '改訂新版JavaScript本格入門 ~モダンスタイルによる基礎から現場での応用まで', 'https://www.amazon.co.jp/%E6%94%B9%E8%A8%82%E6%96%B0%E7%89%88JavaScript%E6%9C%AC%E6%A0%BC%E5%85%A5%E9%96%80-%E3%83%A2%E3%83%80%E3%83%B3%E3%82%B9%E3%82%BF%E3%82%A4%E3%83%AB%E3%81%AB%E3%82%88%E3%82%8B%E5%9F%BA%E7%A4%8E%E3%81%8B%E3%82%89%E7%8F%BE%E5%A0%B4%E3%81%A7%E3%81%AE%E5%BF%9C%E7%94%A8%E3%81%BE%E3%81%A7-%E5%B1%B1%E7%94%B0-%E7%A5%A5%E5%AF%9B/dp/477418411X/ref=sr_1_1?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=javascript&qid=1570685365&sr=8-1', 'Book19', '2019-10-10 14:29:52'),
(23, '確かな力が身につくJavaScript「超」入門 第2版 ', 'https://www.amazon.co.jp/%E7%A2%BA%E3%81%8B%E3%81%AA%E5%8A%9B%E3%81%8C%E8%BA%AB%E3%81%AB%E3%81%A4%E3%81%8FJavaScript%E3%80%8C%E8%B6%85%E3%80%8D%E5%85%A5%E9%96%80-%E7%AC%AC2%E7%89%88-%E7%8B%A9%E9%87%8E-%E7%A5%90%E6%9D%B1/dp/4815601577/ref=sr_1_2?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=javascript&qid=1570685365&sr=8-2', 'Book20', '2019-10-10 14:30:26'),
(24, 'JavaScript コードレシピ集 ', 'https://www.amazon.co.jp/JavaScript-%E3%82%B3%E3%83%BC%E3%83%89%E3%83%AC%E3%82%B7%E3%83%94%E9%9B%86-%E6%B1%A0%E7%94%B0-%E6%B3%B0%E5%BB%B6/dp/4297103680/ref=sr_1_3?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=javascript&qid=1570685365&sr=8-3', 'Book21', '2019-10-10 14:31:01'),
(25, 'スラスラ読める JavaScript ふりがなプログラミング', 'https://www.amazon.co.jp/%E3%82%B9%E3%83%A9%E3%82%B9%E3%83%A9%E8%AA%AD%E3%82%81%E3%82%8B-JavaScript-%E3%81%B5%E3%82%8A%E3%81%8C%E3%81%AA%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9F%E3%83%B3%E3%82%B0-%E3%81%B5%E3%82%8A%E3%81%8C%E3%81%AA%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9F%E3%83%B3%E3%82%B0%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA-%E3%83%AA%E3%83%96%E3%83%AD%E3%83%AF%E3%83%BC%E3%82%AF%E3%82%B9/dp/4295003859/ref=sr_1_4?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=javascript&qid=1570685365&sr=8-4', 'Book22', '2019-10-10 14:31:40'),
(26, '開眼! JavaScript ―言語仕様から学ぶJavaScriptの本質', 'https://www.amazon.co.jp/%E9%96%8B%E7%9C%BC-JavaScript-%E2%80%95%E8%A8%80%E8%AA%9E%E4%BB%95%E6%A7%98%E3%81%8B%E3%82%89%E5%AD%A6%E3%81%B6JavaScript%E3%81%AE%E6%9C%AC%E8%B3%AA-Cody-Lindley/dp/487311621X/ref=sr_1_5?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=javascript&qid=1570685365&sr=8-5', 'Book23', '2019-10-10 14:32:10'),
(27, 'いちばんやさしいJavaScriptの教本 第2版 ECMAScript 2017(ES8)対応', 'https://www.amazon.co.jp/%E3%81%84%E3%81%A1%E3%81%B0%E3%82%93%E3%82%84%E3%81%95%E3%81%97%E3%81%84JavaScript%E3%81%AE%E6%95%99%E6%9C%AC-ECMAScript-2017-%E4%BA%BA%E6%B0%97%E8%AC%9B%E5%B8%AB%E3%81%8C%E6%95%99%E3%81%88%E3%82%8BWeb%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9F%E3%83%B3%E3%82%B0%E5%85%A5%E9%96%80-%E3%80%8C%E3%81%84%E3%81%A1%E3%81%B0%E3%82%93%E3%82%84%E3%81%95%E3%81%97%E3%81%84%E6%95%99%E6%9C%AC%E3%80%8D%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA/dp/4295005924/ref=sr_1_6?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=javascript&qid=1570685365&sr=8-6', 'Book24', '2019-10-10 14:33:10'),
(28, '確かな力が身につくJavaScript「超」入門', 'https://www.amazon.co.jp/%E7%A2%BA%E3%81%8B%E3%81%AA%E5%8A%9B%E3%81%8C%E8%BA%AB%E3%81%AB%E3%81%A4%E3%81%8FJavaScript%E3%80%8C%E8%B6%85%E3%80%8D%E5%85%A5%E9%96%80-%E7%A2%BA%E3%81%8B%E3%81%AA%E5%8A%9B%E3%81%8C%E8%BA%AB%E3%81%AB%E3%81%A4%E3%81%8F%E3%80%8C%E8%B6%85%E3%80%8D%E5%85%A5%E9%96%80%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA-%E7%8B%A9%E9%87%8E-%E7%A5%90%E6%9D%B1/dp/4797383585/ref=sr_1_7?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=javascript&qid=1570685365&sr=8-7', 'Book25', '2019-10-10 14:33:26'),
(29, 'よくわかるJavaScript', 'https://www.amazon.co.jp/%E3%82%88%E3%81%8F%E3%82%8F%E3%81%8B%E3%82%8BJavaScript-%E9%AB%98%E6%A9%8B-%E9%BA%BB%E5%A5%88-ebook/dp/B07QF487N8/ref=sr_1_10?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=javascript&qid=1570685365&sr=8-10', 'Book26', '2019-10-10 14:34:19'),
(30, 'JavaScript Ninjaの極意 ', 'https://www.amazon.co.jp/JavaScript-Ninja%E3%81%AE%E6%A5%B5%E6%84%8F-Bear-Bibeault-ebook/dp/B00ESXY9MA/ref=sr_1_13?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=javascript&qid=1570685365&sr=8-13', 'Book27', '2019-10-10 14:35:03'),
(31, 'Laravel 5.5 サンプルプログラム', 'https://www.amazon.co.jp/Laravel-5-5-%E3%82%B5%E3%83%B3%E3%83%97%E3%83%AB%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%A0-%E7%99%BD%E5%B2%A9%E7%99%BB-ebook/dp/B078KDCPLK/ref=sr_1_9?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&crid=KITN3XFOGI6P&keywords=laravel&qid=1570685732&sprefix=lara%2Caps%2C231&sr=8-9', 'Book28', '2019-10-10 14:36:09'),
(32, 'はじめてのLaravel5.5入門 ~AWS Cloud9で学ぶ', 'https://www.amazon.co.jp/%E3%81%AF%E3%81%98%E3%82%81%E3%81%A6%E3%81%AELaravel5-5%E5%85%A5%E9%96%80-AWS-Cloud9%E3%81%A7%E5%AD%A6%E3%81%B6-%E5%B1%B1%E5%B4%8E-%E5%A4%A7%E5%8A%A9-ebook/dp/B07R9RPVCR/ref=sr_1_11?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&crid=KITN3XFOGI6P&keywords=laravel&qid=1570685732&sprefix=lara%2Caps%2C231&sr=8-11', 'Book29', '2019-10-10 14:37:08'),
(33, '速習 React 速習シリーズ', 'https://www.amazon.co.jp/%E9%80%9F%E7%BF%92-React-%E9%80%9F%E7%BF%92%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA-%E5%B1%B1%E7%94%B0%E7%A5%A5%E5%AF%9B-ebook/dp/B07GWFRCR1/ref=sr_1_2?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=react&qid=1570685847&sr=8-2', 'Book30', '2019-10-10 14:37:55'),
(34, 'Reactビギナーズガイド ―コンポーネントベースのフロントエンド開発入門', 'https://www.amazon.co.jp/React%E3%83%93%E3%82%AE%E3%83%8A%E3%83%BC%E3%82%BA%E3%82%AC%E3%82%A4%E3%83%89-%E2%80%95%E3%82%B3%E3%83%B3%E3%83%9D%E3%83%BC%E3%83%8D%E3%83%B3%E3%83%88%E3%83%99%E3%83%BC%E3%82%B9%E3%81%AE%E3%83%95%E3%83%AD%E3%83%B3%E3%83%88%E3%82%A8%E3%83%B3%E3%83%89%E9%96%8B%E7%99%BA%E5%85%A5%E9%96%80-Stoyan-Stefanov/dp/4873117887/ref=sr_1_3?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=react&qid=1570685847&sr=8-3', 'Book31', '2019-10-10 14:38:23'),
(35, 'React入門 React・Reduxの導入からサーバサイドレンダリングによるUXの向上まで', 'https://www.amazon.co.jp/React%E5%85%A5%E9%96%80-React%E3%83%BBRedux%E3%81%AE%E5%B0%8E%E5%85%A5%E3%81%8B%E3%82%89%E3%82%B5%E3%83%BC%E3%83%90%E3%82%B5%E3%82%A4%E3%83%89%E3%83%AC%E3%83%B3%E3%83%80%E3%83%AA%E3%83%B3%E3%82%B0%E3%81%AB%E3%82%88%E3%82%8BUX%E3%81%AE%E5%90%91%E4%B8%8A%E3%81%BE%E3%81%A7-%E7%A9%B4%E4%BA%95%E5%AE%8F%E5%B9%B8-ebook/dp/B078XDLL2J/ref=sr_1_4?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=react&qid=1570685847&sr=8-4', 'Book32', '2019-10-10 14:39:08'),
(36, 'React開発 現場の教科書', 'https://www.amazon.co.jp/React%E9%96%8B%E7%99%BA-%E7%8F%BE%E5%A0%B4%E3%81%AE%E6%95%99%E7%A7%91%E6%9B%B8-%E7%9F%B3%E6%A9%8B-%E5%95%93%E5%A4%AA/dp/4839960496/ref=sr_1_6?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=react&qid=1570685847&sr=8-6', 'Book33', '2019-10-10 14:39:54');

-- --------------------------------------------------------

--
-- テーブルの構造 `php02_table`
--

CREATE TABLE `php02_table` (
  `id` int(12) NOT NULL,
  `task` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `php02_table`
--

INSERT INTO `php02_table` (`id`, `task`, `deadline`, `comment`, `image`, `indate`) VALUES
(4, 'kadai5', '2019-10-08', 'test4', NULL, '2019-10-05 16:01:26'),
(5, 'kadai5', '2019-10-09', 'test5', NULL, '2019-10-05 16:01:44'),
(6, 'kadai6', '2019-10-10', 'test6', NULL, '2019-10-05 16:02:03'),
(7, 'kadai7', '2019-10-11', 'test7', NULL, '2019-10-05 16:02:22'),
(8, 'kadai8', '2019-10-13', 'test8', NULL, '2019-10-05 16:02:38'),
(9, 'kadai9', '2019-10-15', 'test9', NULL, '2019-10-05 16:03:12'),
(10, 'kadai10', '2019-10-16', 'test10', NULL, '2019-10-05 16:03:37'),
(12, '課題', '2019-10-02', 'qqqqq', NULL, '2019-10-05 17:11:49'),
(13, 'アイウエオ', '2019-10-22', 'sssss', NULL, '2019-10-05 17:12:49'),
(20, '課題23', '2019-10-18', 'テスト', NULL, '2019-10-24 16:23:44'),
(21, '課題30', '2019-11-01', 'php', 'upload/20191026085310d41d8cd98f00b204e9800998ecf8427e.png', '2019-10-26 15:53:10'),
(22, '課題50', '2019-10-26', 'ajax50', NULL, '2019-10-26 17:32:16'),
(23, '課題66', '2019-10-31', 'ajax66', NULL, '2019-10-26 17:52:43'),
(24, '画像', '2019-10-26', '画像テスト', NULL, '2019-10-26 17:56:27'),
(25, '課題111', '2019-10-26', 'ああああああああ', NULL, '2019-10-26 18:05:29'),
(26, '課題111', '2019-10-31', 'aaa', NULL, '2019-10-26 23:45:34'),
(27, '課題qqq', '2019-10-24', 'qqq', NULL, '2019-10-27 00:01:58'),
(28, '課題', '2019-10-18', 'qqq', NULL, '2019-10-27 00:02:10'),
(29, '課題', '2019-10-14', 'vvvv', 'upload/20191029155850d41d8cd98f00b204e9800998ecf8427e.png', '2019-10-29 23:58:50'),
(30, 'www', '2019-10-18', 'ccc', 'upload/20191029155914d41d8cd98f00b204e9800998ecf8427e.png', '2019-10-29 23:59:14');

-- --------------------------------------------------------

--
-- テーブルの構造 `user_table`
--

CREATE TABLE `user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `user_table`
--

INSERT INTO `user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`, `indate`) VALUES
(17, '管理者', '1111', 'aaaa', 1, 0, '2019-10-20 04:31:03'),
(18, 'ユーザー', '2222', 'bbbb', 0, 0, '2019-10-20 04:31:22'),
(20, 'ユーザー(退会)', '3333', 'cccc', 0, 1, '2019-10-20 04:31:59'),
(21, '管理者(退会)', '4444', 'dddd', 1, 1, '2019-10-21 22:33:59'),
(23, '宮本洋介', '11', 'aa', 0, 0, '2019-10-29 23:09:24'),
(24, 'miyamoto', '222', 'bbb', 1, 0, '2019-10-30 09:52:37');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `ajax_table`
--
ALTER TABLE `ajax_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `event_table`
--
ALTER TABLE `event_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `giita_table`
--
ALTER TABLE `giita_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `giita_user_table`
--
ALTER TABLE `giita_user_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `php02_table`
--
ALTER TABLE `php02_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `ajax_table`
--
ALTER TABLE `ajax_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- テーブルのAUTO_INCREMENT `event_table`
--
ALTER TABLE `event_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- テーブルのAUTO_INCREMENT `giita_table`
--
ALTER TABLE `giita_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- テーブルのAUTO_INCREMENT `giita_user_table`
--
ALTER TABLE `giita_user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- テーブルのAUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- テーブルのAUTO_INCREMENT `php02_table`
--
ALTER TABLE `php02_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- テーブルのAUTO_INCREMENT `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
