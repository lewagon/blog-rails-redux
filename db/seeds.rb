Post.destroy_all

posts = RestClient.get('http://reduxblog.herokuapp.com/api/posts?key=LEWAGON-BLOG')
JSON.parse(posts.body).each do |post|
  Post.create!(title: post['title'], content: post['content'])
end
