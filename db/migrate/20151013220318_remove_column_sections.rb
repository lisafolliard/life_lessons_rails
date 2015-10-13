class RemoveColumnSections < ActiveRecord::Migration
  def change
    remove_column :sections, :lesson_id, :integer

  end
end
