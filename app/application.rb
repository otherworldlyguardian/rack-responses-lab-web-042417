class Application
  def call(env)
    resp = Rack::Response.new

    now_time = Time.now

    if now_time.hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
