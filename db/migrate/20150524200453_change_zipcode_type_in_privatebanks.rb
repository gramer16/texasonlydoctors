class ChangeZipcodeTypeInPrivatebanks < ActiveRecord::Migration
  def self.up
    change_column :privatebanks, :zipcode, :string
  end
 
  def self.down
    change_column :privatebanks, :zipcode, :integer
  end
end
