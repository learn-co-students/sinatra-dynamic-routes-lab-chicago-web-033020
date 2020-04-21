require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do 
    @num = params[:number]
    "#{@num.to_i ** 2}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number]
    @phrase = params[:phrase]

    "#{@phrase * @num.to_i}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1, @word2, @word3, @word4, @word5 = params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @num1, @num2 = params[:number1], params[:number2]
    @operation = params[:operation]

    if @operation == "add"
      sum = @num1.to_i + @num2.to_i
      "#{sum.to_s}"
    elsif @operation == "subtract"
      difference = @num1.to_i - @num2.to_i
      "#{difference.to_s}"
    elsif @operation == "multiply"
      product = @num1.to_i * @num2.to_i
      "#{product.to_s}"
    elsif @operation == "divide"
      quotient = @num1.to_i / @num2.to_i
      "#{quotient.to_s}"
    else
      "Operation not valid!"
    end
  end
end