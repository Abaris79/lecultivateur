class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :category
      t.integer :stage_span_min
      t.string :oasis_type
      t.integer :cost

      t.timestamps
    end
  end
end
