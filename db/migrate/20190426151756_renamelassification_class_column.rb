class RenamelassificationClassColumn < ActiveRecord::Migration
  def change
    
    rename_column :classifications, :class, :classification
  end
end
