class AddPreviewToChallenges < ActiveRecord::Migration[8.0]
  def change
    add_column :challenges, :preview, :text
  end
end
