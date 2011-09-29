module UsersHelper
  def gravatar_for(user, options = { :size => 40 })
    gravatar_image_tag (user.email, :alt => user.name, :gravatar => options)
  end
end
