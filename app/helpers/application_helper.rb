module ApplicationHelper
	def avatar_profile_link(user, image_options={}, html_options={})
		link_to(image_tag(user.avatar.url, image_options), profile_path(user.profile_name))
	end

	# Returns the full title on a per=page basis
	def full_title(page_title)
		base_title = "Gombe State Judiciary"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
end
