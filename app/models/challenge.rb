class Challenge < ApplicationRecord
  validates :title, :slug, :description, :difficulty, :time_limit, :memory_limit, :input_format, :output_format, :sample_input, :sample_output, :starter_code, :solution_code, presence: true
  validates :difficulty, :time_limit, :memory_limit, numericality: { only_integer: true }
  validates :published, inclusion: { in: [ true, false ] }
end
