# encoding: UTF-8
# frozen_string_literal: true

module Private
  class SettingsController < BaseController
    def index

    end

    def toggle_fee
      current_user.house_fee = !current_user.house_fee
      current_user.save!
    end
  end
end

