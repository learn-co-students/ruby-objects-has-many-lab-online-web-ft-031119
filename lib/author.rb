class Author
  attr_accessor :name
  @@post_count = []
  def initialize(name)
    @name = name
    @posts = []
  end
  def posts
    @posts
  end
  def add_post(post)
    post.author = self
    @posts << post
    @@post_count << post
  end
  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    @posts << post
    @@post_count << post
  end
  def self.post_count
    @@post_count.length
  end
end
