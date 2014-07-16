class CreateSegments < ActiveRecord::Migration
  def change
    create_table :segments do |t|
      t.string :name
      t.integer :geofenceCount
      t.integer :counquestCount
      t.string :location
      t.string :dma
      t.integer :deviceCount
      t.string :imageFilepath

      t.timestamps
    end
  end
end
