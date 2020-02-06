## 1.word-of-mouthの概要
● エンジニア養成スクールの口コミを投稿、閲覧できるアプリケーションです。 <br>
● URL　http://52.69.45.22/ <br>
● 一人のユーザーが同じスクールに複数回口コミを投稿するとビュー画面が崩れてしまうので、テスト用アカウントは特に設けていません。

## 2.アプリケーション機能一覧
● ユーザー登録（Emailアドレス、パスワード） <br>
● 口コミの投稿（編集、削除機能は実装していません） <br>
● ユーザー別投稿一覧ページ <br> 
● 口コミの表題別一覧ページ <br>
● 

## 3.使用技術
● Visual Studio Code <br>
● MySQL <br>
● aws（capistranoを使用した自動デプロイ) <br>
● Ruby on Rails <br>
● Ruby <br>
● Scss <br>
● Haml <br>

## 4.DB設計
● ER図
<img width="1423" alt="スクリーンショット 2020-02-06 15 06 14" src="https://user-images.githubusercontent.com/56438740/73910365-7cb8e900-48f2-11ea-8592-5446ce2e09df.png">



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
- has_many :inquiries

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
