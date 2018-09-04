module TradingviewAPIv1
  class History < Grape::API
    params do
      requires :symbol, type: String, desc: 'Symbol Name'
      requires :resolution, type: String, desc: 'resolution'
      requires :from, type: Integer, desc: 'Symbol Name'
      requires :to, type: Integer, desc: 'Symbol Name'
    end

    get :history do
      # trades = Trade.filter(params[:symbol], params[:resolution], params[:from], params[:to], 10, 'id asc')
      trades = Trade.filter2(params[:symbol], ::Time.at(params[:from]), ::Time.at(params[:to]), nil, 'id desc')
      timestamps = Array.new
      closes = Array.new
      volumns = Array.new
      opens = Array.new
      highs = Array.new
      lows = Array.new

      intertime = 60
      case params[:resolution]
        when '1'

        when '15'
          intertime *= 15
        when '30'
          intertime *= 30
        when '60'
          intertime *= 60
        when 'D'
          intertime *= (60 * 24)
      end

      if trades.any?
        trades.reverse_order!

        for record in trades
          if timestamps.any?
            if timestamps.last + intertime > record.created_at.to_i
              highs[-1] = record.price if highs.last < record.price
              lows[-1] = record.price if lows.last > record.price
              closes[-1] = record.price
              volumns[-1] = volumns[-1] + record.volume
              next
            end
          end
          timestamps.push record.created_at.to_i
          closes.push record.price
          opens.push record.price
          highs.push record.price
          lows.push record.price
          volumns.push record.volume
        end

        {
            s: "ok",
            t: timestamps,
            c: closes,
            o: opens,
            h: highs,
            l: lows,
            v: volumns
        }
      else
        trades = Trade.filter2(params[:symbol], nil, nil, 1, 'id desc')
        {
            s: "no_data",
            nextTime: trades[0].created_at.to_i
        }
      end


    end
  end
end