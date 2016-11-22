class CreateQnaAnswers < ActiveRecord::Migration
  def change
    create_table :qna_answers do |t|

      t.text :content
      t.string :name
      t.string :pass

      t.integer :qna_id

      t.timestamps null: false
    end
  end
end
