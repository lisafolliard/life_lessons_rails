class AddColumnSections < ActiveRecord::Migration
  def change
    add_column :sections, :lesson_id, :integer
  end
end
