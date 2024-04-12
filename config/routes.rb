Rails.application.routes.draw do
  get("/", {:controller => "math", :action => "home"})
  get("/square/new", {:controller => "math", :action => "square_form"})
  get("/square/results", {:controller => "math", :action => "square_results"})
  get("square_root/new", {:controller => "math", :action => "square_root_form"})
  get("square_root/results", {:controller => "math", :action => "square_root_results"})
  get("payment/new", {:controller => "math", :action => "payment_form"})
  get("payment/results", {:controller => "math", :action => "payment_results"})
  get("random/new", {:controller => "math", :action => "random_form"})
  get("random/results", {:controller => "math", :action => "random_results"})
end
