class AddHouseFeeToMembers < ActiveRecord::Migration
  def change
      add_column :members, :house_fee, :boolean, null: false, default: false
  end
end
