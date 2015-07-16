class ChangeZipcodeTypeInPropertymanagementfirms < ActiveRecord::Migration
 def self.up
    change_column :propertymanagementfirms, :zipcode, :string
  end
 
  def self.down
    change_column :propertymanagementsfirms, :zipcode, :integer
  end
end
