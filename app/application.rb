
class Application

  def call(input)
    resp = Rack::Response.new

    time = Time.new(input)

    if time.hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
