class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.string :name, limit: 128, null: false

      t.timestamps
    end
  end
end
