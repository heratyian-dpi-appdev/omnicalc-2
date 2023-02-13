Rails.application.routes.draw do
  get("/add", { controller: "application", action: "add" })
  get("/add_wizard", { controller: "application", action: "add_wizard" })

  get("/subtract", { controller: "application", action: "subtract" })
  get("/subtract_wizard", { controller: "application", action: "subtract_wizard" })

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
