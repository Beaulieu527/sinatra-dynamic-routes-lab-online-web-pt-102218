require_relative 'config/environment'
class App < Sinatra::Base
  # Write your code here!  

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end
   get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
   end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @string = ""
    @number.times do 
      @string += "#{@phrase}"
    end
    @string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5'do
    @array = []
    @array  << params[:word1]
    @array  << params[:word2]
    @array  << params[:word3]
    @array  << params[:word4]
    @array  << params[:word5]
    "#{@array.join(' ')}."
  end
  
  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

      if @operation == "add"
        "#{@number1 + @number2}"
      elsif @operation == "subtract"
        "#{@number1 - @number2}"
      elsif @operation == "multiply"
        "#{@number1 * @number2}"
      elsif @operation == "divide"
        "#{@number1 / @number2}"
      else "sorry"
    end
  end



end