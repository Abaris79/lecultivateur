class AddNameToProgrammes < ActiveRecord::Migration[5.1]
  def change
    add_column :programmes, :name, :string
  end
end
