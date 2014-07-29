require 'sinatra'
require 'slim'
require 'studio_grep'
require 'studio_grep/config'
require 'shellwords'

class StudioGrep::Web < Sinatra::Base

  set :dump_errors, true
  set :public_folder, File.expand_path('../../public', __dir__)
  set :views,         File.expand_path('../../views', __dir__)

  enable :sessions

  get "/" do
    slim :"search"
  end

  get "/task/search" do
    slim :"search"
  end

  post "/task/search" do
    target_dir = Shellwords.escape(StudioGrep::Config.target_dir)
    search = Shellwords.escape(params[:search] || 'foo')
    @result = `find #{target_dir} | xargs grep #{search}`
    slim :"search"
  end
end
