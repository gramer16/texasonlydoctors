class ChangeZipcodeInSeptics < ActiveRecord::Migration
  def self.up
    change_column :septics, :zipcode, :string
  end
 
  def self.down
    change_column :septics, :zipcode, :integer
  end
end
