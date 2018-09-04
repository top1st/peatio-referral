module TradingviewAPIv1
  class Symbols < Grape::API

    params do
      requires :symbol, type: String, desc: 'Symbol Name'
    end

    get :symbols do
      {
          "name" => params[:symbol],
          "exchange-traded" => "",
          "exchange-listed" => "",
          "timezone" => "Europe/Paris",
          "minmovement" => 1,
          "minmovement2" => 0,
          "pointvalue" => 1,
          "session" => "24x7",
          "has_intraday" => true,
          "has_no_volume" => false,
          "description" => params[:symbol],
          "has_empty_bars" => true,
          "type" => "bitcoin",
          "supported_resolutions" => ["1", "15", "30", "60", "D", "2D", "3D", "W", "3W", "M"],
          "pricescale" => 1000,
          "ticker" => params[:symbol],
          "force_session_rebuild" => false
      }

    end

  end
end