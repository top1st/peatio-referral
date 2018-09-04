module TradingviewAPIv1
  class Config < Grape::API
    get :config do
      {
          "supports_search" => true,
          "supports_group_request" => false,
          "supports_marks" => false,
          "supports_time" => true,
          "exchanges" => [{
                              "value" => "",
                              "name" => "All Exchanges",
                              "desc" => ""
                          }],
          "symbolsTypes" => [{
                                 "name" => "All types",
                                 "value" => ""
                             }],
          "supported_resolutions" => ["1", "15", "30", "60", "D", "2D", "3D", "W", "3W", "M"]
      }

    end
  end
end