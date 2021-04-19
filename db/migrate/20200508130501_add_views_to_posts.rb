class AddViewsToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :view_counter, :int, default: 0
  end
end
