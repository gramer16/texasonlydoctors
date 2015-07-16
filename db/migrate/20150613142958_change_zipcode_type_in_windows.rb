class ChangeZipcodeTypeInWindows < ActiveRecord::Migration
 def self.up
    change_column :windows, :zipcode, :string
  end
 
  def self.down
    change_column :windows, :zipcode, :integer
  end
end
