# require 'time'
class Application

  def call(env)
    resp = Rack::Response.new

      # you can also use Time.now.strftime("%s").to_i
    # answer= time/100000000
   
      time=Time.now.hour
      # you can also use Time.now.hour
    # answer= time/100000000
    if time <= 12
      resp.write "Good Morning"
    elsif time>12
      resp.write "Good Afternoon"
    end 
    resp.finish
  end
end 