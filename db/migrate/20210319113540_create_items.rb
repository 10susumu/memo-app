class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string         :title
      t.text           :text
      t.integer        :user_id, foreign_key: true

      t.timestamps
    end
  end
end
