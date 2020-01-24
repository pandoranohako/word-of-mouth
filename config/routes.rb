Rails.application.routes.draw do
  root to: "tops#index"

  get 'inquiry' => 'inquiry#index' 
  get 'inquiry/confirm' => redirect("/inquiry")
  get 'inquiry/thanks' => redirect("/inquiry")
  ##### 問い合わせ確認画面
  post 'inquiry/confirm' => 'inquiry#confirm'
  ##### 問い合わせ完了画面
  post 'inquiry/thanks' => 'inquiry#thanks'
end
