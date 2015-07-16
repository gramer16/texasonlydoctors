class ChangeZipcodeTypeChangeZipcodeTypeInCountertops < ActiveRecord::Migration
  def self.up
    change_column :countertops, :zipcode, :string
  end
 
  def self.down
    change_column :countertops, :zipcode, :integer
  end
end
