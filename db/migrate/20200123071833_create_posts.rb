class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text           :admission,               null: false
      t.text           :merit,                   null: false
      t.text           :demerit,                 null: false
      t.text           :gap,                     null: false
      t.text           :curriculum_quality,      null: false
      t.text           :cost,                    null: false
      t.text           :out_of_learning,         null: false
      t.text           :employment,              null: false
      t.references     :user,                    foregin_key: true
      t.references     :school,                  foregin_key: true
      t.timestamps
    end
  end
end
