require 'sinatra'
require 'sinatra/reloader'
require 'better_errors'

configure :development do
    use BetterErrors::Middleware
    BetterErrors.application_root = __dir__
end

get '/add/:num1/:num2' do
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i
    begin
        "The quotient is #{num1 / num2}"
    rescue Exception
        "Dont divide by zero!"
    end

    "The sum is #{ num1 + num2 }"
    
end

get '/sub/:num1/:num2' do

end