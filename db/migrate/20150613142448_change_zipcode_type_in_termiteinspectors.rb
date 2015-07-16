class ChangeZipcodeTypeInTermiteinspectors < ActiveRecord::Migration
  def self.up
    change_column :termiteinspectors, :zipcode, :string
  end
 
  def self.down
    change_column :termiteinspectors, :zipcode, :integer
  end
end
