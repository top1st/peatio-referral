class Referral < ActiveRecord::Base
end

# == Schema Information
# Schema version: 20180905082814
#
# Table name: referrals
#
#  id         :integer          not null, primary key
#  member_id  :integer
#  ref_type   :string(255)
#  rewards    :decimal(10, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
