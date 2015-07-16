class ChangeZipcodeInStagings < ActiveRecord::Migration
  def self.up
    change_column :stagings, :zipcode, :string
  end
 
  def self.down
    change_column :stagings, :zipcode, :integer
  end
end
