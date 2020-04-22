require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get "/square/:number" do
    @user_number = params[:number].to_i
    "#{@user_number ** 2}"
  end

  get "/say/:number/:phrase" do
    @user_repeat_number = params[:number].to_i
    @user_phrase = params[:phrase]
    "#{@user_phrase * @user_repeat_number}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @user_word_one = params[:word1]
    @user_word_two = params[:word2]
    @user_word_three = params[:word3]
    @user_word_four = params[:word4]
    @user_word_five = params[:word5]
    "#{@user_word_one} " + "#{@user_word_two} " + "#{@user_word_three} " + "#{@user_word_four} " + "#{@user_word_five}."
  end

  get "/:operation/:number1/:number2" do
    @user_number_one = params[:number1].to_i
    @user_number_two = params[:number2].to_i
    case params[:operation]
      when "add"
        "#{@user_number_one + @user_number_two}"
      when "subtract"
        "#{@user_number_one - @user_number_two}"
      when "multiply"
        "#{@user_number_one * @user_number_two}"
      when "divide"
        "#{@user_number_one / @user_number_two}"
    end
  end
end