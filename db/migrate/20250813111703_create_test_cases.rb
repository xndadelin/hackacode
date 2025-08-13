class CreateTestCases < ActiveRecord::Migration[8.0]
  def change
    create_table :test_cases do |t|
      t.references :challenge, null: false, foreign_key: true
      t.text :input_data
      t.text :expected_output

      t.timestamps
    end
  end
end
