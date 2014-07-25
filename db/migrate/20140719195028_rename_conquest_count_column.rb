class RenameConquestCountColumn < ActiveRecord::Migration
   def self.up
    rename_column :segments, :counquestCount, :conquestCount
  end

  def self.down
    rename_column :segments, :conquestCount, :counquestCount
  end
end
