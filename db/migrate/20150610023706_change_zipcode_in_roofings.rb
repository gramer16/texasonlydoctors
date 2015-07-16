class ChangeZipcodeInRoofings < ActiveRecord::Migration
  def self.up
    change_column :roofings, :zipcode, :string
  end
 
  def self.down
    change_column :roofings, :zipcode, :integer
  end
end
