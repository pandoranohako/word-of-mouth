class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts

#ユーザー新規登録
  validates :email, :age, presence:true
  validates :password, presence: true, length: { in: 7..128}
  validates :first_name, :last_name, :first_name_kana, :last_name_kana, presence: true, length: { maximum: 35}
end
