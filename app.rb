require_relative 'config/environment'

  class App < Sinatra::Base
    # Write your code here!
    
    # Create a dynamic route at get '/reversename/:name' 
    # that accepts a name and renders the name backwards.
    get '/reversename/:name' do
      params[:name].reverse
    end

    # Create a dynamic route at get '/square/:number' that 
    # accepts a number and returns the square of that number. 
    # Note: Remember that values in params always come in as strings, 
    # and your return value for the route should also be a string (use .to_i and .to_s).
    get "/square/:number" do
      square = params[:number].to_i ** 2 
      "#{square}"
    end

   # Create a dynamic route at get '/say/:number/:phrase' that 
   # accepts a number and a phrase and returns that phrase 
   # in a single string the number of times given.
   # * It repeats the phrase n times
   get "/say/:number/:phrase" do
    number = params[:number]
    phrase = params[:phrase] # 这个是string
    phrase * number.to_i
  end

  # Create a dynamic route at get '/say/:word1/:word2/:word3/:word4/:word5' 
  # that accepts five words and returns a string containing 
  # all five words (i.e. word1 word2 word3 word4 word5).
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    word1, word2, word3, word4, word5 = params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]
    # word1 = params[:word1]
    # word2 = params[:word2]
    # word3 = params[:word3]
    # word4 = params[:word4]
    # word5 = params[:word5]
    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end
  # 另一个方法
  # get '/say/:word1/:word2/:word3/:word4/:word5' do 
  #   words = params.values.join(" ") +"."
  #   "#{words}"
  # end


  # Create a dynamic route at get '/:operation/:number1/:number2' that 
  # accepts an operation (add, subtract, multiply or divide) and 
  # performs the operation on the two numbers provided, returning a String. 
  # For example, going to /add/1/2 should render 3 as a String.
  get "/:operation/:number1/:number2" do
    num1, num2 = params[:number1].to_i, params[:number2].to_i
    operation = params[:operation]
    if operation == "add"
    sum = num1 + num2
    "#{sum}"
    elsif operation == "subtract"
    difference = num1 - num2
    "#{difference}"
    elsif operation == "multiply"
    product = num1 * num2
    "#{product}"
    elsif operation == "divide"
    quotient = num1 / num2
    "#{quotient}"
    else
      "Operation not valid!"
    end
  end
end