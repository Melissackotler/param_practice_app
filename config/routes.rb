Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    
    get "params_practice_url" => "params_practice#practice_method"
    
    get "segment_params_url/:hellokitty" => "params_practice#url_segment_method"
    post "/body_params" => "params_practice#body_params"
  
  end
end
