class ChangeZipcodeTypeInAsphalts < ActiveRecord::Migration
 def self.up
    change_column :asphalts, :zipcode, :string
  end
 
  def self.down
    change_column :asphalts, :zipcode, :integer
  end
end
