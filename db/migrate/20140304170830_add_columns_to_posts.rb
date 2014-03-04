class AddColumnsToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :tag, :string
  	add_column :posts, :site, :string
  end
end
