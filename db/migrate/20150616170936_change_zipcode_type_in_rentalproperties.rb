class ChangeZipcodeTypeInRentalproperties < ActiveRecord::Migration
  def self.up
    change_column :rentalproperties, :zipcode, :string
  end
 
  def self.down
    change_column :rentalproperties, :zipcode, :integer
  end
end
