class CreateArticleClassifications < ActiveRecord::Migration
  def change
    create_table :article_classifications do |t|
      
      t.integer :article_id

      t.integer :classification_id
    end
  end
end
