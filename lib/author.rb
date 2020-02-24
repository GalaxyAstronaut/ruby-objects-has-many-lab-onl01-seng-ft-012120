class Author

  attr_accessor :name, :posts

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts 
    
    
  end 

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    title = Post.new(title)
    @posts << title
    title.author = self
    @@post_count += 1
  end

  def self.post_count
    Post.all.count
  end

end