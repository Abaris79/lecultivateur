class CreateOases < ActiveRecord::Migration[5.1]
  def change
    create_table :oases do |t|
      t.string :name
      t.string :city
      t.integer :jauge
      t.string :acoustic
      t.integer :stage_span

      t.timestamps
    end
  end
end
