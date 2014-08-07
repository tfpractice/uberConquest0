class ChangeIntegersToBigIntegers < ActiveRecord::Migration
  def up
  	change_column(:segments, :geofenceCount, :bigint)
  	change_column(:segments, :conquestCount, :bigint)
  	change_column(:segments, :deviceCount, :bigint)
  end

  def down
  	change_column(:segments, :deviceCount, :integer)
  	change_column(:segments, :conquestCount, :integer)
  	change_column(:segments, :geofenceCount, :integer)
  end
end
