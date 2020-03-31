require 'sinatra'
require 'json'

before do
  content_type :json
end

get '/results/:page' do
  page = params[:page].to_i
  {
    page: page,
    results: (page - 1...page * 10).to_a,
  }.to_json
end
