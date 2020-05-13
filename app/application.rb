
class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.new

    time.hour < 12 ? resp.write "Good Morning!": resp.write "Good Afternoon!"

    resp.finish
  end

end
