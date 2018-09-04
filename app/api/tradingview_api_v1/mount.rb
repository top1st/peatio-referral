module TradingviewAPIv1
  class Mount < Grape::API
    PREFIX = '/tradingview_api'

    version 'v1', using: :path

    cascade false

    format         :json
    content_type   :json, 'application/json'
    default_format :json

    use TradingviewAPIv1::CORS::Middleware

    mount TradingviewAPIv1::Config
    mount TradingviewAPIv1::Symbols
    mount TradingviewAPIv1::Time
    mount TradingviewAPIv1::History
    mount TradingviewAPIv1::Marks
  end
end