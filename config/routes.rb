Nyxcal::Application.routes.draw do
  get "welcome/index"
  root 'welcome#index'

  get 'day/:year/:month/:day' => 'day#view'

end
