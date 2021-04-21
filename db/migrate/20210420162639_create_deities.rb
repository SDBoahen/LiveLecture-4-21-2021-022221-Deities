class CreateDeities < ActiveRecord::Migration[6.1]
  def change
    create_table :deities do |t|
      t.string :name
      t.string :power
      t.time :time_judgment
      t.integer :height
      t.boolean :on_earth
      t.boolean :in_space
      t.boolean :wears_glasses
      t.integer :human_sacrifices
      t.boolean :sacrifices

      t.timestamps
    end
  end
end
