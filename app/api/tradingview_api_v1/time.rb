module TradingviewAPIv1
  class Time < Grape::API
    get :time do
      ::Time.now.to_i
    end
  end
end