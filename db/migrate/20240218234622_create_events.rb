class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.string :slug, null: false
      t.datetime :starts_at, null: false
      t.datetime :ends_at, null: false
      t.string :location
      t.text :description
      t.boolean :published, null: false, default: false

      t.timestamps
    end

    add_index :events, :slug, unique: true
  end
end
