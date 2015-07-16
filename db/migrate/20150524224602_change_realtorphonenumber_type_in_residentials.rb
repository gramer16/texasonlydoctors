class ChangeRealtorphonenumberTypeInResidentials < ActiveRecord::Migration
   def self.up
    change_column :residentials, :realtorphonenumber, :string
  end
 
  def self.down
    change_column :residentials, :realtorphonenumber, :integer
  end
end
