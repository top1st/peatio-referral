class CreateReferrals < ActiveRecord::Migration
  def change
    create_table :referrals do |t|
      t.belongs_to :member, index: true
      t.belongs_to :order, index: true
      t.string :ref_type
      t.decimal :rewards, precision: 32, scale: 16

      t.timestamps null: false
    end
  end
end
