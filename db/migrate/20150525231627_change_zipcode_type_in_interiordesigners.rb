class ChangeZipcodeTypeInInteriordesigners < ActiveRecord::Migration
  def self.up
    change_column :interiordesigners, :zipcode, :string
  end
 
  def self.down
    change_column :interiordesigners, :zipcode, :integer
  end
end
