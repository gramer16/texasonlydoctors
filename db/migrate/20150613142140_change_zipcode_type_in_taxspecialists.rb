class ChangeZipcodeTypeInTaxspecialists < ActiveRecord::Migration
  def self.up
    change_column :taxspecialists, :zipcode, :string
  end
 
  def self.down
    change_column :taxspecialists, :zipcode, :integer
  end
end
