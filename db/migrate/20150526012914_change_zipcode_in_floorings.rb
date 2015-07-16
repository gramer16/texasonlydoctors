class ChangeZipcodeInFloorings < ActiveRecord::Migration
  def self.up
    change_column :floorings, :zipcode, :string
  end
 
  def self.down
    change_column :floorings, :zipcode, :integer
  end
end
