module ApplicationHelper

  def random_header_url
    images = Dir.new(Rails.root.to_s + "/app/assets/images/headers").select{ |f| f.downcase.match(/\.jpg|\.jpeg|\.png/) }
    image_url("headers/" + images.sample)
  end
end
