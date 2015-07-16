class ChangeZipcodeInMolds < ActiveRecord::Migration
  def self.up
    change_column :molds, :zipcode, :string
  end
 
  def self.down
    change_column :molds, :zipcode, :integer
  end
end
