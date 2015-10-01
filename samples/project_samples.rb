require 'ruble'

project_sample "Project Sample Example" do |s|
    s.id = "sample.local"
    s.category = "com.aptana.projects.samples.web.category"
    s.location = "samples/local_sample.zip"
    s.description = "A basic project sample"
    s.natures = ["com.aptana.projects.webnature"]
end

recent_posts = HTTParty.get "http://localhost:8080/WegoShop/api/getOrders"
puts recent_posts.status, recent_posts.count

recent_posts.posts.each do |post|
  puts post.title #guessing
end