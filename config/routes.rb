Rails.application.routes.draw do

  get("/areas/square/:length_of_side", { :controller => "areas", :action => "square" })

  get("/areas/circle/:radius", { :controller => "areas", :action => "circle" })

# adjusted the triangle params place holder by entering colons
  get("/areas/triangle/:base/:vertical_height", { :controller => "areas", :action => "triangle" })

#created a new route from scratch for rectangle
  get("/areas/rectangle/:width/:height", {:controller => "areas", :action => "rectangle"})

  get("/areas/trapezoid/:a/:b/:vertical_height", { :controller => "areas", :action => "trapezoid" })

  get("/areas/ellipse/:a/:b", { :controller => "areas", :action => "ellipse" })

  get("/random_circles", { :controller => "areas", :action => "random" })

  get("/", { :controller => "pages", :action => "home" })

end
