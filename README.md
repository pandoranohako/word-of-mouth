## 1.作成した背景
エンジニアのSchoolを選ぶ際に、比較できるサイトがあまりありませんでした。
そういったサイトがあれば、これからSchoolに通うか迷っている人たちの手助けになればいいと思い作成しました。
<img width="1419" alt="スクリーンショット 2020-03-02 16 47 04" src="https://user-images.githubusercontent.com/57927366/75655595-8b9e7b80-5ca5-11ea-894c-eaee8ff621d7.png">


## 2.word-of-mouthの概要
● エンジニア養成スクールの口コミを投稿、閲覧できるアプリケーションです。 <br>
● URL　http://52.69.45.22/ <br>
● 一人のユーザーが同じスクールに複数回口コミを投稿するとビュー画面が崩れてしまうので、テスト用アカウントは特に設けていません。

## 3.アプリケーション機能一覧
● ユーザー登録（Emailアドレス、パスワード） <br>
● 口コミの投稿（編集、削除機能は実装していません） <br>
● ユーザー別投稿一覧ページ <br> 
● 口コミの表題別一覧ページ <br>
● 管理者への問い合わせ

## 4.使用技術
● Visual Studio Code <br>
● MySQL <br>
● aws（capistranoを使用した自動デプロイ) <br>
● Ruby on Rails <br>
● Ruby <br>
● Scss <br>
● Haml <br>

## 5.DB設計
● ER図
<img width="953" alt="スクリーンショット 2020-02-25 12 11 19" src="https://user-images.githubusercontent.com/57927366/75214454-ff85e300-57d0-11ea-9f0a-d0b65ff6cf8b.png">



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
