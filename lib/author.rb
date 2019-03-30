# This is the recommended solution parallel to the artist class (more concise)

class Author
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(post_title)
        post = Post.new(post_title)
        post.author = self
    end

    # Use this method to leverage the Post class for #all items instead of having to use two arrays to keep track of them in the main class

    def posts 
        Post.all.select {|post| post.author == self}
    end

    def self.post_count
        Post.all.count
    end
end