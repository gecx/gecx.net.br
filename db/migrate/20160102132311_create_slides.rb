class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string  :description, :null => false  
      t.string  :foto_file_name
      t.string  :foto_content_type
      t.integer :ranking
      t.boolean :active
      t.timestamps null: false
    end
  end
end
