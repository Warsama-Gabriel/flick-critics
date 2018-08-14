class RenameTitleField < ActiveRecord::Migration[5.2]
  def change
  	rename_column :reviews, :tile, :title
  end
end
