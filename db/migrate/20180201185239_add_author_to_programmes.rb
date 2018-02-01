class AddAuthorToProgrammes < ActiveRecord::Migration[5.1]
  def change
    add_column :programmes, :author, :string
  end
end
