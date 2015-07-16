class ChangeZipcodeTypeInMortgages < ActiveRecord::Migration
 def self.up
    change_column :mortgages, :zipcode, :string
  end
 
  def self.down
    change_column :mortgages, :zipcode, :integer
  end
end
