class Inquiry < ApplicationRecord
  include ActiveModel::Model

  attr_accessor :name, :message, :email

  validates :name,   length: { minimum: 3, :too_short => '名前を入力して下さい。'}
  validates :message, presence: { message: '問い合わせ内容を入力して下さい。'}
  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,
  presence: {message: 'メールアドレスを入力してください。'},
  format: {with: VALID_EMAIL_REGEX, allow_blank: true,
  message: 'メールアドレスを正しく入力してください。'}
end
