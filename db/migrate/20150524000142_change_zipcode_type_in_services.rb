class ChangeZipcodeTypeInServices < ActiveRecord::Migration
  def self.up
    change_column :services, :zipcode, :string
  end
 
  def self.down
    change_column :services, :zipcode, :integer
  end
end
