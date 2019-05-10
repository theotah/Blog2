class CreateClassifications < ActiveRecord::Migration
  def change
    create_table :classifications do |t|
      t.string :class
      t.text :class_description
      
    end
  end
end
