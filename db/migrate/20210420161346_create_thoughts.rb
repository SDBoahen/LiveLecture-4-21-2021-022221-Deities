class CreateThoughts < ActiveRecord::Migration[6.1]
  def change
    create_table :thoughts do |t|

      t.timestamps
    end
  end
end
