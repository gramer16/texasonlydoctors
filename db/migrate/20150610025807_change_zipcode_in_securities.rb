class ChangeZipcodeInSecurities < ActiveRecord::Migration
  def self.up
    change_column :securities, :zipcode, :string
  end
 
  def self.down
    change_column :securities, :zipcode, :integer
  end
end
