class ChangeZipcodeTypeInLawyers < ActiveRecord::Migration
  def self.up
    change_column :lawyers, :zipcode, :string
  end
 
  def self.down
    change_column :lawyers, :zipcode, :integer
  end
end
