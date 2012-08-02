MtgoxBitcoinCalc::Application.routes.draw do
  match "/check_profits", to: "home#check_profits"
  match "/check_updated_values", to: "home#check_updated_values"
  root :to => "home#index"
end
