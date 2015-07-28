Pakyow::App.bindings :main_menu do
  require "pp"
  scope :main_menu do
  restful :main_menu
  	binding(:first_container) do
  		{
  		}
  	end
	
	binding(:people_link) do
		css_class = ""
		splat = request.path.split("/")
		unless splat[1].nil? || splat[1].length == 0
			if splat[1] == "categories"
				css_class = "selected"
			elsif splat[1] == "people"
				if splat[2].nil? || splat[2] != "new"
					css_class = "selected"
				end
			end
		end
  		{
  			:class => css_class
  		}
  	end

	binding(:about_link) do
  		css_class = ""
		splat = request.path.split("/")
		unless splat[1].nil? || splat[1].length == 0
			if splat[1] == "about"
				css_class = "selected"
			end
		end
  		{
  			:class => css_class
  		}
  	end

	binding(:feedback_link) do
  		{
  		}
  	end

	binding(:login_container) do
  		{
  		}
  	end

	binding(:create_profile_link) do
  		css_class = ""
  		content = "Create Profile"
  		href = "/people/new"
		splat = request.path.split("/")
		unless splat[1].nil? || splat[1].length == 0
			if splat[1] == "people"
				unless splat[2].nil? || splat[2].length == 0
					if splat[2] == "new"
						css_class = "selected"
					end
				end
			end
		end
		unless cookies[:people].nil?
			person = People[cookies[:people]]
			unless person.nil?
				content = "Edit Profile"
				href = "/people/" + person.custom_url + "/edit"
			end
		end
  		{
  			:class => css_class,
  			:content => content,
  			:href => href
  		}
  	end

	binding(:login_link) do
  		css_class = ""
  		content = "Log In"
  		href = "/login"
		splat = request.path.split("/")
		unless splat[1].nil? || splat[1].length == 0
			if splat[1] == "sessions" || splat[1] == "login"
				css_class = "selected"
			end
		end
		unless cookies[:people].nil?
			person = People[cookies[:people]]
			unless person.nil?
				content = "Log Out"
				href = "/logout"
			end
		end
  		{
  			:class => css_class,
  			:content => content,
  			:href => href
  		}
  	end	
  end
end