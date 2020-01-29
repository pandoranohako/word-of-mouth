class AddSchoolsToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :schools, :image, :string
  end
end
