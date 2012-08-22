class AddColumnItemTypeToItems < ActiveRecord::Migration
  def change
    add_column :items, :category, :integer
  end
end
