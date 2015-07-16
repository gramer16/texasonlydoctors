class ChangeZipcodeTypeInLandscapings < ActiveRecord::Migration
  def self.up
    change_column :landscapings, :zipcode, :string
  end
 
  def self.down
    change_column :landscapings, :zipcode, :integer
  end
end
