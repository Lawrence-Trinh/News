class AddViewsToTags < ActiveRecord::Migration[5.2]
  def change
    add_column :tags, :view_counter, :int, default: 0
  end
end
