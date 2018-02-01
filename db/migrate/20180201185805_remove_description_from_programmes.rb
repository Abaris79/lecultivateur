class RemoveDescriptionFromProgrammes < ActiveRecord::Migration[5.1]
  def change
    remove_column :programmes, :description, :text
  end
end
