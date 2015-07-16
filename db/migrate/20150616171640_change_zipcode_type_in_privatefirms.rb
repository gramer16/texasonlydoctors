class ChangeZipcodeTypeInPrivatefirms < ActiveRecord::Migration
   def self.up
    change_column :privatefirms, :zipcode, :string
  end
 
  def self.down
    change_column :privatefirms, :zipcode, :integer
  end
end
