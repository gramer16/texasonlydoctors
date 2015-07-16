class ChangeZipcodeTypeInLandsurveyors < ActiveRecord::Migration
  def self.up
    change_column :landsurveyors, :zipcode, :string
  end
 
  def self.down
    change_column :landsurveyors, :zipcode, :integer
  end
end
