class CreateQnas < ActiveRecord::Migration
  def change
    create_table :qnas do |t|

      t.string :title
      t.text :content
      t.string :name
      t.string :pass
      
      t.timestamps null: false
    end
  end
end
