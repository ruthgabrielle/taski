class RemoveDivisionFromProjects < ActiveRecord::Migration[6.1]
  def change
    remove_column :projects, :division, :string
  end
end
