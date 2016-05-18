Rails.application.routes.draw do
    root "artists#index"
    get "/:id" => "artists#show"
end
