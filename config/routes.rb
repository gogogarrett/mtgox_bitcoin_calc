MtgoxBitcoinCalc::Application.routes.draw do
  match "/check_profits", to: "home#check_profits"
  root :to => "home#index"
end
