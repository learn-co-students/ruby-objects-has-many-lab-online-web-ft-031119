class Post
  attr_accessor :title, :author
  @@all = []

  def self.all
    @@all
  end

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    author.name if author
  end

end
