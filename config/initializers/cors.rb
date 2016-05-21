# Avoid CORS issues when API is called from the frontend app
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests

# Read more: https://github.com/cyu/rack-cors

 Rails.application.config.middleware.insert_before 0, "Rack::Cors" do
   allow do
     origins 'simple-rails-api.herokuapp.com'

     resource '*',
       headers: 'Access-Control-Allow-Origin',
       methods: [:get, :post, :put, :patch, :delete, :options, :head]
   end
 end