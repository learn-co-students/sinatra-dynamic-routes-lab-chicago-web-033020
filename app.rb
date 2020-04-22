require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    sds = @num * @num
    "#{sds.to_s}" 
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phrase = params[:phrase]
    final = []
    num.times do
      final << phrase
    end
    return final
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} " + "#{params[:word2]} " + "#{params[:word3]} " + "#{params[:word4]} " + "#{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
   op = params[:operation]
   num1 = params[:number1].to_i
   num2 = params[:number2].to_i
   if op == "add"
    add = num1 + num2
    add.to_s 
   elsif op == "subtract"
    subtract = num1 - num2 
    subtract.to_s
   elsif op == "multiply"
    mult = num1 * num2 
    mult.to_s
   elsif op == "divide"
    div = num1 / num2 
    div.to_s
   end 
  end
end