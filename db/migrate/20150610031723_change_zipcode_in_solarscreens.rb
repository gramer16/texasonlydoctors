class ChangeZipcodeInSolarscreens < ActiveRecord::Migration
 def self.up
    change_column :solarscreens, :zipcode, :string
  end
 
  def self.down
    change_column :solarscreens, :zipcode, :integer
  end
end
