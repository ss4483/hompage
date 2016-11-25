class CreateQnaAnswers < ActiveRecord::Migration
  def change
    create_table :qna_answers do |t|

      t.text :content
      t.string :name
      t.string :hashed_pass
      t.string :salt
      
      t.integer :qna_id

      t.timestamps null: false
    end
  end
end
