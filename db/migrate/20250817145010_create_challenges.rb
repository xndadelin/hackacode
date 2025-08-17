class CreateChallenges < ActiveRecord::Migration[8.0]
  def change
    create_table :challenges do |t|
      t.string :title
      t.string :slug
      t.text :description
      t.integer :difficulty
      t.integer :time_limit
      t.integer :memory_limit
      t.text :input_format
      t.text :output_format
      t.text :sample_input
      t.text :sample_output
      t.text :starter_code
      t.text :solution_code
      t.string :source_url
      t.boolean :published

      t.timestamps
    end
  end
end
