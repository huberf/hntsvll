Pakyow::App.bindings :people do
	scope :people do
		restful :people


		options(:category_one) do
			get_nested_category_id_and_category_name()
		end
		options(:category_two) do
			get_nested_category_id_and_category_name()
		end
		options(:category_three) do
			get_nested_category_id_and_category_name()
		end



		binding(:id) do
			{
				:value => bindable.id
			}
		end
		binding(:member_number) do
			{
				:content => bindable.id,
				:class => bindable.id
			}
		end
		binding(:approve_profile_url) do
			{
				:href => '/people/approve/' + bindable.id.to_s
			}
		end
		binding(:spam_profile_url) do
			{
				:href => '/people/spam/' + bindable.id.to_s
			}
		end

		binding(:first_name) do
			{
				:content => bindable.first_name
			}
		end

		binding(:last_name) do
			{
				:content => bindable.last_name
			}
		end

		binding(:company) do
			{
				:content => bindable.company
			}
		end

		binding(:twitter_link) do
			show = "show"
			title = "Log in to view " + bindable.first_name + "'s Twitter profile"
			link = "/login"
			content = "Log in to view"
			unless session[:people].nil?
				unless bindable.nil? || bindable.twitter.nil? || bindable.twitter.length ==	 0
					show = "show"
				end
				unless bindable.first_name.nil? || bindable.last_name.nil?
					title = bindable.first_name + " " + bindable.last_name + "'s profile on Twitter"
				end
				link = "/clicks/people/" + bindable.custom_url + "/twitter"
				content = "Twitter"
			end
			{
				:target => "_blank",
				:href => link,
				:class => show,
				:title => title,
				:content => content
			}
		end

		binding(:linkedin_link) do
			show = "show"
			title = "Log in to view " + bindable.first_name + "'s Twitter profile"
			link = "/login"
			content = "Log in to view"
			
			unless session[:people].nil?
				content = "LinkedIn"
				unless bindable.nil? || bindable.linkedin.nil? || bindable.linkedin.length == 0
					show = "show"
					link = "/clicks/people/" + bindable.custom_url + "/linkedin"
				end
				unless bindable.first_name.nil? || bindable.last_name.nil?
					title = bindable.first_name + " " + bindable.last_name + "'s profile on LinkedIn"
				end
			end
			{
				:title => title,
				:href => link,
				:class => show,
				:target => "_blank",
				:content => content
			}
		end

		binding(:url_link) do
			show = "show"
			title = "Log in to view " + bindable.first_name + "'s Twitter profile"
			link = "/login"
			content = "Log in to view"
			unless session[:people].nil?
				content = "Website"
				if bindable.nil? || bindable.url.nil? || bindable.url.length == 0
					
				else
					show = "show"
					link = "/clicks/people/" + bindable.custom_url + "/url"
				end

				unless bindable.first_name.nil? || bindable.last_name.nil?
					title = bindable.first_name + " " + bindable.last_name + "'s URL"
				end
			end
			{
				:target => "_blank",
				:href => link,
				:class => show,
				:title => title,
				:content => content
			}
		end

		binding(:twitter) do
			{
				:content => bindable.twitter
			}
		end

		binding(:linkedin) do
			{
				:content => bindable.linkedin
			}
		end

		binding(:url) do
			{
				:content => bindable.url
			}
		end

		binding(:other_info) do
			{
				:content => bindable.other_info
			}
		end

		binding(:email_link) do
			if bindable.email.nil?
				bindable.email = "webmaster@openhsv.com"
			end
			{
				:content => bindable.email,
				:href => "mailto:" + bindable.email
			}
		end

		binding(:email) do
			if bindable.email.nil?
				bindable.email = "email"
			end
			{
				:content => bindable.email
			}
		end

		binding(:categories_string) do
			{
				:content => bindable.categories_string
			}
		end

		binding (:category_one_link) do
			href = ""
			content = ""
			unless bindable.categories.nil?
				jsn = bindable.categories.to_s
				array = JSON.parse(jsn)    

				unless array[0].nil? || array[0].length == 0
				    category = Category[array[0]]
					href = "#"
					content = category.category
					href = category.url
				end
			end
			{
				:href => href,
				:content => content
			}
		end

		binding (:category_two_link) do
			href = ""
			content = ""
			unless bindable.categories.nil?
				jsn = bindable.categories.to_s
				array = JSON.parse(jsn)  
				unless array[1].nil? || array[1].length == 0
					
				    category = Category[array[1]]
					href = "#"
					content = category.category
					href = category.url
				end
			end
			{
				:href => href,
				:content => content
			}
		end

		binding (:category_three_link) do
			href = ""
			content = ""
			unless bindable.categories.nil?
				jsn = bindable.categories.to_s
				array = JSON.parse(jsn) 

				unless array[2].nil? || array[2].length == 0   
				   category = Category[array[2]]
					href = "#"
					content = category.category
					href = category.url
				end
			end
			{
				:href => href,
				:content => content
			}
		end

		binding(:category_one) do
			bindable.category_one_id
		end

		binding(:category_two) do
			bindable.category_two_id
		end
		binding(:category_spacer_one) do
			log_debug("/app/lib/bindings.rb :: category_spacer_one :: ", bindable.categories_string.to_s)
			cat = ""
			unless bindable.categories.nil?
				jsn = bindable.categories.to_s
				array = JSON.parse(jsn)    
			   if array.length > 1 && array[1].length > 1
			   	cat =  "&nbsp;/&nbsp;"
			   end
			end 
			{
				:content => cat
			}
		end

		binding(:category_three) do
			bindable.category_three_id
		end
		binding(:category_spacer_two) do
			log_debug("/app/lib/bindings.rb :: category_spacer_one :: ", bindable.categories_string.to_s)
			cat = ""
			unless bindable.categories.nil?
				jsn = bindable.categories.to_s
				array = JSON.parse(jsn)    
			   if array.length > 2 && array[2].length > 1
			   	cat =  "&nbsp;/&nbsp;"
			   end
			end 
			{
				:content => cat
			}
		end

		binding(:image_url) do
			bindable.image_url
		end

		binding(:image) do


			src = ""
			name = ""
			unless bindable.nil?
				unless bindable.first_name.nil? || bindable.last_name.nil?
					name = bindable.first_name + " " + bindable.last_name

					unless bindable.image_url.nil?
						src = bindable.image_url
					else
						src = "https://s3.amazonaws.com/openhsv.com/manual-uploads/" + bindable.first_name + "-" + bindable.last_name + ".jpg"
					end
				end
			end
			{
				:src => bindable.image_url,
				:title =>  name,
				:alt => name
			}
		end

		binding(:image_unveil) do
			src = ""
			name = ""
			unless bindable.nil?
				unless bindable.first_name.nil? || bindable.last_name.nil?
					name = bindable.first_name + " " + bindable.last_name

					unless bindable.image_url.nil?
						src = bindable.image_url
					else
						src = "https://s3.amazonaws.com/openhsv.com/manual-uploads/" + bindable.first_name + "-" + bindable.last_name + ".jpg"
					end
				end
			end
			{

				:'data-src' => src,
				:title =>  name,
				:alt => name
			}
		end

		binding(:custom_url) do
			bindable.custom_url
		end

		binding(:admin) do
			{
				:checked => bindable[:admin]
			}
		end

		binding(:approved) do
			{
				:checked => bindable[:approved]
			}
		end

		binding(:profile_link) do
			first_name = ""
			last_name = ""
			unless bindable.first_name.nil?
				first_name = bindable.first_name
			end
			unless bindable.last_name.nil?
				last_name = bindable.last_name
			end
			{
				:href => "/people/" + bindable.custom_url,
				:content => first_name + " " + last_name
			}
		end

		binding(:edit_profile_link) do

			{
				:href => "/people/" + bindable.custom_url.to_s + "/edit"
			}
		end

		binding(:admin_fieldset) do
			visible = "show"
		  	people = People[cookies[:people]]
			if people.nil? || people.admin.nil? || people.admin == false
			 	visible = "hide"
			end
			{
				:class => visible
			}
		end

		binding(:container) do
			classes = "profile"
			unless bindable.categories.nil?
				jsn = bindable.categories.to_s
				array = JSON.parse(jsn)
				unless array[0].nil? || array[0].length == 0
					classes = classes + " " + get_css_classes_for_category(array[0])
				end   

				unless array[1].nil? || array[1].length == 0
					classes = classes + " " + get_css_classes_for_category(array[1])
				end   

				unless array[2].nil? || array[2].length == 0
					classes = classes + " " + get_css_classes_for_category(array[2])
				end
			end
			{
				:class => classes
			}
		end


    end
end
