class ChangeZipcodeTypeInAccountants < ActiveRecord::Migration
  def self.up
    change_column :accountants, :zipcode, :string
  end
 
  def self.down
    change_column :accountants, :zipcode, :integer
  end
end
