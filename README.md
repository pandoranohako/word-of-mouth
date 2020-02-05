# 1.word-of-mouthの概要
- プログラミングスクールの口コミサイトです。  
  URL: http://52.69.45.22
- スクールのカリキュラム終了後自主的にチームを組み、10日間の期限を設けて開発しました。
- 開発期間 10日
- 開発人数 3人
- 担当箇所
- TOPページ(サーバー、フロント)、スクール別表示(サーバーフロント)、スクール別回答者一覧表示(サーバー、フロント)、  
  項目別表示(サーバー、フロント)、お問い合わせ(サーバー、フロント)

# 2.機能一覧
- 記事投稿
- ユーザー登録
- スクール別表示
- スクール別回答者一覧表示  
  回答者ごとの回答結果がご覧いただけます。
<img width="702" alt="スクリーンショット 2020-02-05 20 26 59" src="https://user-images.githubusercontent.com/57931839/73838894-11223d80-4858-11ea-9ca6-4bed63380693.png">

- スクール別に8つの項目の一覧を表示  
  下記の項目のいずれかを選択するとその項目だけ一覧で表示されます。
<img width="727" alt="スクリーンショット 2020-02-05 20 26 46" src="https://user-images.githubusercontent.com/57931839/73838863-fe0f6d80-4857-11ea-8018-eefacebb98d4.png">

- お問い合わせ機能

# 3.使用技術一覧
- Ruby
- Ruby on Rails
- Haml
- Scss
- aws
- MySQL
- capistranoによる自動デプロイ

# 4.ER図
![word_of_mouth (1)](https://user-images.githubusercontent.com/57931839/73840067-b76f4280-485a-11ea-81ad-c6a86b2f2d7a.jpeg)


## Usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|encrypted_password|string|null: false|
|first_name|string|null: false|
|last_name|string|null: false|
|first_name_kana|string|null: false|
|last_name_kana|string|null: false|
|gender|string|null: false|
|carrier|string|null: false|
|age|integer|null: false|
|prefecture|string|null: false|

### Association
- has_many :posts

## Schoolテーブル
|Column|Type|Options|
|------|----|-------|
|school_name|string|null: false|

### Association
- has_many :posts

## Inquiriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|message|string|null: false|
|email|string|null: false|

## Postsテーブル
|Column|Type|Options|
|------|----|-------|
|admission|text|null: false|
|merit|text|null: false|
|demerit|text|null:false|
|gap|text|null: false|
|curriculum_quality|text|null: false|
|cost|text|null: false|
|out_of_learning|text|null: false|
|emplyment|text|null: false|
|user|references|foregin_key: true|
|school|references|foregin_key: true|

### Association
- belongs_to :user
- belongs_to :school