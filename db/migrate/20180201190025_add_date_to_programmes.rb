class AddDateToProgrammes < ActiveRecord::Migration[5.1]
  def change
    add_column :programmes, :date, :integer
  end
end
