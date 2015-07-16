class ChangeZipcodeTypeInPlumbings < ActiveRecord::Migration
  def self.up
    change_column :plumbings, :zipcode, :string
  end
 
  def self.down
    change_column :plumbings, :zipcode, :integer
  end
end
