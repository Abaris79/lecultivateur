class CreateProgrammes < ActiveRecord::Migration[5.1]
  def change
    create_table :programmes do |t|
      t.string :name
      t.text :description
      t.integer :duration
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
