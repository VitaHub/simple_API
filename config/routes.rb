Rails.application.routes.draw do
    root "artists#index"
    get "/:id" => "artists#show"

    match '*any' => 'application#options', :via => [:options]
end
