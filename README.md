# 1.word-of-mouthの概要
- プログラミングスクールの口コミサイトです。

# 2.機能一覧
- 記事投稿
- ユーザー登録
- スクール別表示
- 回答者別一覧表示
<img width="1440" alt="スクリーンショット 2020-02-05 20 26 59" src="https://user-images.githubusercontent.com/57931839/73838072-344bed80-4856-11ea-9a7e-c51cf2b62e42.png">

- 8つの項目毎に一覧を表示
<img width="1440" alt="スクリーンショット 2020-02-05 20 26 46" src="https://user-images.githubusercontent.com/57931839/73838117-475ebd80-4856-11ea-86c7-6f5c78561699.png">

- お問い合わせ機能




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