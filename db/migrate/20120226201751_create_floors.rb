class CreateFloors < ActiveRecord::Migration
  def change
    create_table :floors do |t|
      t.integer :number
      t.integer :square_feet
      t.integer :building_id

      t.timestamps
    end
  end
end
