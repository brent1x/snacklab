# require 'pry'
require 'sinatra'
require 'better_errors'
# require 'sinatra/reloader'
# require 'pg'

# set :conn, PG.connect( dbname: 'snackz' )

# before do
#   @conn = settings.conn
# end

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = __dir__
end

get '/' do
  redirect '/snacks'
end

get '/snacks' do
  "LET'S GO GET A GODDAMN SNACK!"
end