module TradingviewAPIv1
  class Marks < Grape::API
    params do
      requires :symbol, type: String, desc: 'Symbol Ticker Name'
      requires :resolution, type: String, desc: 'resolution'
      requires :from, type: Integer, desc: 'unix timestamp from'
      requires :to, type: Integer, desc: 'unix timestamp to'
    end
    get :marks do
      {
          id: [0, 1, 2, 3, 4, 5],
          time: [1532736000, 1532390400, 1532131200, 1532131200, 1531440000, 1530144000],
          color: ["red", "blue", "green", "red", "blue", "green"],
          text: ["Today", "4 days back", "7 days back + Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", "7 days back once again", "15 days back", "30 days back"],
          label: ["A", "B", "CORE", "D", "EURO", "F"],
          labelFontColor: ["white", "white", "red", "#FFFFFF", "white", "#000"],
          minSize: [1532736000, 1532390400, 1532131200, 1532131200, 1531440000, 1530144000]
      }
    end

    params do
      requires :symbol, type: String, desc: 'Symbol Ticker Name'
      requires :resolution, type: String, desc: 'resolution'
      requires :from, type: Integer, desc: 'unix timestamp from'
      requires :to, type: Integer, desc: 'unix timestamp to'
    end
    get :timescale_marks do
      [
          {
              id: "tsm1",
              time: 1532736000,
              color: "red",
              label: "A",
              tooltip: ""
          },
          {
              id: "tsm2",
              time: 1532390400,
              color: "blue",
              label: "D",
              tooltip: ["Dividends: $0.56", "Date: Tue Jul 24 2018"]
          },
          {
              id: "tsm3",
              time: 1532131200,
              color: "green",
              label: "D",
              tooltip: ["Dividends: $3.46", "Date: Sat Jul 21 2018"]
          },
          {
              id: "tsm4",
              time: 1531440000,
              color: "#999999",
              label: "E",
              tooltip: ["Earnings: $3.44", "Estimate: $3.60"]
          },
          {
              id: "tsm7",
              time: 1530144000,
              color: "red",
              label: "E",
              tooltip: ["Earnings: $5.40", "Estimate: $5.00"]
          },

      ]
    end

  end
end