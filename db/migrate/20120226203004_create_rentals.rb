class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.integer :square_feet
      t.integer :floor_id
      t.string :type
      t.float :cost_per_square_feet
      t.float :tripple_net

      t.timestamps
    end
  end
end
