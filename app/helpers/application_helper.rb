module ApplicationHelper
	def avatar_profile_link(user, image_options={}, html_options={})
		link_to(image_tag(user.avatar.url, image_options), profile_path(user.profile_name))
	end
end
