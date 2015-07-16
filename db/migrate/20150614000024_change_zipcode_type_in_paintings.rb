class ChangeZipcodeTypeInPaintings < ActiveRecord::Migration
   def self.up
    change_column :paintings, :zipcode, :string
  end
 
  def self.down
    change_column :paintings, :zipcode, :integer
  end
end
