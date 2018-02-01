class RemoveNameFromProgrammes < ActiveRecord::Migration[5.1]
  def change
    remove_column :programmes, :name, :string
  end
end
