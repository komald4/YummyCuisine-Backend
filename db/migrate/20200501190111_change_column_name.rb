class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :recipes, :desciption, :description
  end
end
