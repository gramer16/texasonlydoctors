class ChangeZipcodeTypeInGeneralcontractors < ActiveRecord::Migration
  def self.up
    change_column :generalcontractors, :zipcode, :string
  end
 
  def self.down
    change_column :generalcontractors, :zipcode, :integer
  end
end
