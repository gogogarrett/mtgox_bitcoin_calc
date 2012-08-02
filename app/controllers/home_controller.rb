require 'mtgox'
class HomeController < ApplicationController

  def index
    @buy = MtGox.ticker.buy
    @sell = MtGox.ticker.sell
  end

  def check_profits
    dollars, buy_cost, sell_cost = params[:dollars], params[:buy_cost], params[:sell_cost]
    render json: ProfitMan.lets_get_rich(dollars, buy_cost, sell_cost, params[:mtgox_percent])
  end

  def check_updated_values
    buy = MtGox.ticker.buy; sell = MtGox.ticker.sell
    render json: { buy_cost: buy, sell_cost: sell }
  end

end
