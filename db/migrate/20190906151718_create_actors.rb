class CreateActors < ActiveRecord::Migration[6.0]
  def change
    create_table :actors do |t|
      t.string :first_name, limit: 128, null: false
      t.string :last_name, limit: 128

      t.timestamps
    end
  end
end
