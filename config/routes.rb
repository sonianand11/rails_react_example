Rails.application.routes.draw do

  namespace :v1, defaults: {format: 'json'} do
    get 'things', to: "things#index"
  end

  # Forward all requests to StaticController#index but requests
  # must be non-Ajax (!req.xhr?) and HTML mime type (req.format.html?).
  # This does not include the root ("/") path.
  get '*page', to: 'static#index', constants: ->(req) do
    !req.xhr? && req.format.html?
  end

  # Forward root to StaticController#index
  root 'static#index'

end
