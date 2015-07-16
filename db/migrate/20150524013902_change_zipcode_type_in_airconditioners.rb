class ChangeZipcodeTypeInAirconditioners < ActiveRecord::Migration
 def self.up
    change_column :airconditioners, :zipcode, :string
  end
 
  def self.down
    change_column :airconditioners, :zipcode, :integer
  end
end
