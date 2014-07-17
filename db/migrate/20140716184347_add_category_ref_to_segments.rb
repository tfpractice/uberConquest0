class AddCategoryRefToSegments < ActiveRecord::Migration
  def change
    add_reference :segments, :category, index: true
  end
end
