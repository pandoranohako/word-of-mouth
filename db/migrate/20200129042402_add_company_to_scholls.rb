class AddCompanyToScholls < ActiveRecord::Migration[5.2]
  def change
    add_column :schools, :company, :string
  end
end
