require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end

  get "/square/:number" do
    @number = params[:number]
    @total = @number.to_i ** 2
    @total.to_s
    #  @number.to_i
  #  @number ** 2
  #  @number.to_s
  end

  get "/say/:number/:phrase" do
    @number = params[:number]
    @phrase = params[:phrase]
    @times = @number.to_i
    @phrase * @times
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

   get "/:operation/:number1/:number2" do
     @number1 = params[:number1]
     @number2 = params[:number2]
     @operation = params[:operation]
     if @operation == "add"
      @total = @number1.to_i + @number2.to_i
     elsif @operation == "subtract"
      @total = @number1.to_i - @number2.to_i
    elsif @operation == "multiply"
      @total = @number1.to_i * @number2.to_i
    else @operation == "divide"
      @total = @number1.to_i / @number2.to_i
    end
    @total.to_s
   end

end