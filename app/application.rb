class Application

	def call(env)
		resp = Rack::Response.new
		time = Time.now.hour

		if time < 12
			resp.write "Good Morning!"
		else time >= 12
			resp.write "Good Afternoon!"
		end

		resp.finish
	end
	

end