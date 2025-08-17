json.extract! challenge, :id, :title, :slug, :description, :difficulty, :time_limit, :memory_limit, :input_format, :output_format, :sample_input, :sample_output, :starter_code, :solution_code, :source_url, :published, :created_at, :updated_at
json.url challenge_url(challenge, format: :json)
