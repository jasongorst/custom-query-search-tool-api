Rails.application.routes.draw do
  # resources :transactions
  defaults format: :json do
    get 'Search/Test', to: 'transactions#test', as: 'test'
    post 'Search/Query', to: 'transactions#query', as: 'query'
    get 'Search/MetricDefinitions', to: 'transactions#metric_definitions', as: 'metric_definitions'
  end
end
