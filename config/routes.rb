Rails.application.routes.draw do
  get("/", { :controller => "zebra", :action => "rules"})
  get("/rock", { :controller => "zebra", :action => "game"})
  get("/paper", { :controller => "zebra", :action => "game"})
  get("/scissors", { :controller => "zebra", :action => "game"})
end
