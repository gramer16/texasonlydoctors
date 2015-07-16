class ChangeZipcodeTypeInPoolcleaners < ActiveRecord::Migration
  def self.up
    change_column :poolcleaners, :zipcode, :string
  end
 
  def self.down
    change_column :poolcleaners, :zipcode, :integer
  end
end
