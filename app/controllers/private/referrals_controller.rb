module Private
  class ReferralsController < ApplicationController
    before_action :set_referral, only: [:show, :edit, :update, :destroy]

    # GET /referrals
    # GET /referrals.json
    def index
      @referrals = Referral.where(member_id: current_user.id)
    end

    # GET /referrals/1
    # GET /referrals/1.json
    def show
    end

    def set_referral
      @referral = Referral.find(params[:id])
    end

  end

end
