class AddCagtegoryToPrompts < ActiveRecord::Migration[5.0]
  def change
    add_reference :prompts, :category, foreign_key: true
  end
end
