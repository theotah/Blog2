class AddNotesToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :NCC_Classification, :string
    add_column :articles, :additional_notes, :text_area
  end
end
