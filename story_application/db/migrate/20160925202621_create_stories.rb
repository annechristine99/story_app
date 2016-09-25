class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.text :body
      t.references :prompt, foreign_key: true

      t.timestamps
    end
  end
end
