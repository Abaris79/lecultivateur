class AddReferenceToProgrammes < ActiveRecord::Migration[5.1]
  def change
    add_column :programmes, :reference, :string
  end
end
