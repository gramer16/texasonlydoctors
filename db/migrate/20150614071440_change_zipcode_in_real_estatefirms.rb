class ChangeZipcodeInRealEstatefirms < ActiveRecord::Migration
  def self.up
    change_column :real_estatefirms, :zipcode, :string
  end
 
  def self.down
    change_column :real_estatefirms, :zipcode, :integer
  end
end
