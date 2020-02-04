Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    
  end
  root to: "tops#index"

  get 'inquiry' => 'inquiry#index' 
  get 'inquiry/confirm' => redirect("/inquiry")
  get 'inquiry/thanks' => redirect("/inquiry")
  ##### 問い合わせ確認画面
  post 'inquiry/confirm' => 'inquiry#confirm'
  ##### 問い合わせ完了画面
  post 'inquiry/thanks' => 'inquiry#thanks'


  resources :school do
    member do
      get 'admission',          to: 'school#admission'
      get 'merit',              to: 'school#merit'
      get 'demerit',            to: 'school#demerit'
      get 'cost',               to:'school#cost'
      get 'gap',                to:'school#gap'
      get 'curriculum_quality', to:'school#curriculum_quality'
      get 'out_of_learning',    to: 'school#out_of_learning'
      get 'employment',         to:'employment'   
    end
  end
  resources :posts, only: [:index, :new, :create]
  resources :users

end
