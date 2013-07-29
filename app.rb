require 'sinatra'
require 'sinatra/asset_pipeline'

class App < Sinatra::Base
  register Sinatra::AssetPipeline

  get "/" do
    haml :index, :format => :html5
  end

  get '/*' do
    "Hello ~! you'll find your files at /assets/application.js and /assets/application.css"
  end
end
