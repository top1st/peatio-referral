module Private
  class ReferralsController < ApplicationController
    before_action :set_referral, only: [:show, :edit, :update, :destroy]

    # GET /referrals
    # GET /referrals.json
    def index
      @referrals = Referral.all
    end

    # GET /referrals/1
    # GET /referrals/1.json
    def show
    end

    # GET /referrals/new
    def new
      @referral = Referral.new
    end

    # GET /referrals/1/edit
    def edit
    end

    # POST /referrals
    # POST /referrals.json
    def create
      @referral = Referral.new(referral_params)

      respond_to do |format|
        if @referral.save
          format.html { redirect_to @referral, notice: 'Referral was successfully created.' }
          format.json { render :show, status: :created, location: @referral }
        else
          format.html { render :new }
          format.json { render json: @referral.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /referrals/1
    # PATCH/PUT /referrals/1.json
    def update
      respond_to do |format|
        if @referral.update(referral_params)
          format.html { redirect_to @referral, notice: 'Referral was successfully updated.' }
          format.json { render :show, status: :ok, location: @referral }
        else
          format.html { render :edit }
          format.json { render json: @referral.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /referrals/1
    # DELETE /referrals/1.json
    def destroy
      @referral.destroy
      respond_to do |format|
        format.html { redirect_to referrals_url, notice: 'Referral was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_referral
      @referral = Referral.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def referral_params
      params.require(:referral).permit(:member_id, :ref_type, :rewards)
    end
  end

end
