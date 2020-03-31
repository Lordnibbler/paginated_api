require 'sinatra'

get '/results/:page' do
  page = params[:page]
  return {
    page: page,
    results: (page - 1...page * 10),
  }
end
