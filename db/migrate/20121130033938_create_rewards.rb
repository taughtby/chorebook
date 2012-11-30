class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.string :description
      t.string :image
      t.boolean :is_rewarded
      t.integer :costs_points
      t.integer :child_id

      t.timestamps
    end
  end
end
