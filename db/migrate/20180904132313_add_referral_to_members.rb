class AddReferralToMembers < ActiveRecord::Migration
  def change
    add_column :members, :referral_code, :string
    add_column :members, :code, :string

    if defined?(Member)
      Member.find_each do |member|
        if member.code.length > 12
          member.code = nil
          member.send(:assign_rf)
          member.save!
        end
      end
    end
    change_column :members, :code, :string, null: false, limit: 12, index: true
    remove_index :members, :code if index_exists?(:members, :code)
    add_index :members, :code, unique: true
  end
end
