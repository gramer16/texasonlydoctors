class ChangeZipcodeTypeInCustomCabinets < ActiveRecord::Migration
  def self.up
    change_column :customcabinets, :zipcode, :string
  end
 
  def self.down
    change_column :customcabinets, :zipcode, :integer
  end
end
