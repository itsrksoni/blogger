class AddColToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :note, :string
  end
end
