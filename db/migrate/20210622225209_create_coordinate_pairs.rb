class CreateCoordinatePairs < ActiveRecord::Migration[6.1]
  def change
    create_table :coordinate_pairs do |t|
      t.string :x
      t.string :y
      t.references :picture, null: false, foreign_key: true
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
