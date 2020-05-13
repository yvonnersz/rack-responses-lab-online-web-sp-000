class App

  def call(env)
    time = Time.new
    time.hour

    if time.hour < 12
      resp.write "Good Morning"
    else
      resp.write "Good Afternoon"
    end

    resp.finish
  end

end

run App.new
