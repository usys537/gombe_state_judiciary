module ApplicationHelper
	def link_to_latest_posts(topic)
      post = relevant_posts(topic).last
      text = "#{time_ago_in_words(post.created_at)} #{t("ago_by")} #{post.user.profile_name}"
      link_to text, forem.forum_topic_path(post.topic.forum, post.topic, :anchor => "post-#{post.id}", :page => topic.last_page)
    end
end
