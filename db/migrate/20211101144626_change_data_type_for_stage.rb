class ChangeDataTypeForStage < ActiveRecord::Migration[6.1]
  def change
    change_column :projects, :stage, :string
  end
end
