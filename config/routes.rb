Rails.application.routes.draw do
  get("/square/new", {:controller => "calculation", :action => "square" })

  get("/square/results", {:controller => "calculation", :action => "square_results" })

  get("/square_root/new", {:controller => "calculation", :action => "square_root" })

  get("/square_root/results", {:controller => "calculation", :action => "square_root_results" })

  get("/payment/new", {:controller => "calculation", :action => "payment" })

  get("/payment/results", {:controller => "calculation", :action => "payment_results" })

  get("/random/new", {:controller => "calculation", :action => "random" })

  get("/random/results", {:controller => "calculation", :action => "random_results" })

  get("/", {:controller => "calculation", :action => "square"})


end
