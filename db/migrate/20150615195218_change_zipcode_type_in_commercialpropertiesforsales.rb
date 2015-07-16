class ChangeZipcodeTypeInCommercialpropertiesforsales < ActiveRecord::Migration
  def self.up
    change_column :commercialpropertiesforsales, :zipcode, :string
  end
 
  def self.down
    change_column :commercialpropertiesforsales, :zipcode, :integer
  end
end
