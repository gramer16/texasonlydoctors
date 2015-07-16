class ChangeZipcodeTypeInPoolrepairs < ActiveRecord::Migration
 def self.up
    change_column :poolrepairs, :zipcode, :string
  end
 
  def self.down
    change_column :poolrepairs, :zipcode, :integer
  end
end
