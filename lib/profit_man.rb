class ProfitMan

  def self.lets_get_rich(dollars, buy_cost, sell_cost, mtgox_percent)
    dollars, buy_cost, sell_cost, mtgox_percent = dollars.to_f, buy_cost.to_f, sell_cost.to_f, mtgox_percent.to_f

    coins = dollars / buy_cost
    gross_dollars = coins * sell_cost
    mtgox_cut = gross_dollars * mtgox_percent
    final_amount = gross_dollars - mtgox_cut
    outcome = final_amount < dollars ? "You got screwd." : "You just scored!"
    net_profit = final_amount - dollars

    {
      dollars: ("%.6f" % dollars),
      buy_cost: ("%.6f" % buy_cost),
      sell_cost: ("%.6f" % sell_cost),
      mtgox_percent: mtgox_percent,
      gross_dollars: ("%.6f" % gross_dollars),
      mtgox_cut: ("%.6f" % mtgox_cut),
      final_amount: ("%.6f" % final_amount),
      net_profit: ("%.6f" % net_profit),
      outcome: outcome
    }
  end

end
