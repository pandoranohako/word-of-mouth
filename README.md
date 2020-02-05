# word-of-mouth
エンジニア養成スクールの口コミを投稿、閲覧できるアプリケーションです。

## Description
っっっk
## Features


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