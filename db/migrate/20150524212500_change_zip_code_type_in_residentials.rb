class ChangeZipCodeTypeInResidentials < ActiveRecord::Migration
  def self.up
    change_column :residentials, :zip_code, :string
  end
 
  def self.down
    change_column :residentials, :zip_code, :integer
  end
end
