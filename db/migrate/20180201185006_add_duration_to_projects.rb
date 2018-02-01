class AddDurationToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :duration, :integer
  end
end
