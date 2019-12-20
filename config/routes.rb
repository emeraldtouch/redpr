class ActionDispatch::Routing::Mapper
  def draw(routes_name)
    instance_eval(File.read(Rails.root.join("config/routes/#{routes_name}.rb")))
  end
end

Rails.application.routes.draw do
  devise_for :accounts
  draw :api
  draw :app
  draw :users

  namespace :admin do
    draw :admin
  end

  root to: 'promo#index'
end
