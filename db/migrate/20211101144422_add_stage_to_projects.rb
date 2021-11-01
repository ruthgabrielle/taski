class AddStageToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :stage, :integer
  end
end
