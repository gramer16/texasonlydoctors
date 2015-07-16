class ChangeZipcodeTypeInTitlecompanies < ActiveRecord::Migration
  def self.up
    change_column :titlecompanies, :zipcode, :string
  end
 
  def self.down
    change_column :titlecompanies, :zipcode, :integer
  end
end
