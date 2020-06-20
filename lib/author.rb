class Author
  
  attr_accessor :name, :posts
  @@all = []
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def self.all
    @@all
  end
  def add_post(post)
    post.author = self
    posts << post
    self.class.all << post
  end
  
  def add_post_by_title(title)
    new_post = Post.new(title)
    add_post(new_post)
  end
  
  def self.post_count
    all.length
  end
end