class ChangeZipcodeTypeInHardmoneys < ActiveRecord::Migration
 def self.up
    change_column :hardmoneys, :zipcode, :string
  end
 
  def self.down
    change_column :hardmoneys, :zipcode, :integer
  end
end
