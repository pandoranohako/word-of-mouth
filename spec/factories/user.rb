FactoryBot.define do

  factory :user do
    email {"kkk@gmail.com"}
    password {"00000000"}
    password_confirmation {"00000000"}
    first_name {"鈴木"}
    last_name {"太郎"}
    first_name_kana {"スズキ"}
    last_name_kana {"タロウ"}
    age {"20"}
    gender {"男性"}
    carrier {"社会人"}
    prefecture_id {"1"}
  end
end
