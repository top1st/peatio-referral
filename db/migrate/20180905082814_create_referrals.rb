class CreateReferrals < ActiveRecord::Migration
  def change
    create_table :referrals do |t|
      t.integer :member_id
      t.string :ref_type
      t.decimal :rewards

      t.timestamps null: false
    end
  end
end
