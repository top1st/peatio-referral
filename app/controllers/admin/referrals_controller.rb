module Admin
  class ReferralsController < BaseController
    

    before_action :set_referral, only: [:show]

    # GET /referrals
    # GET /referrals.json
    def index
      @referrals = Referral.all
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
