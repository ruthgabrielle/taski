class AddTasFileToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :task_file, :text
  end
end
