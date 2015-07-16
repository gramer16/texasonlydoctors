class ChangeZipcodeTypeInCashbuyers < ActiveRecord::Migration
  def self.up
    change_column :cashbuyers, :zipcode, :string
  end
 
  def self.down
    change_column :cashbuyers, :zipcode, :integer
  end
end
