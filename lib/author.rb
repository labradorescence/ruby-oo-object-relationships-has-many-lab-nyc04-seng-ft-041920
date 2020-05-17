require 'pry'

class Author

    attr_accessor :name
 
    #attr_reader 

    def initialize(name) #author name
        @name = name

        @post = []
    end


# p1obj = Post.new("post_name")
# p1obj.posts #[]
# post.author = p1obj
# p1obj.posts #[]
    
    def posts
     #   binding.pry
       Post.all.select do |each|
         each.author  == self
       end
    end


    # describe "#add_post" do
    #   it "takes in an argument of a post and associates that post with the author by telling the post that it belongs to that author" do
    #     hello_world = Post.new("Hello World")
    #     betty.add_post(hello_world)
    #     expect(betty.posts).to include(hello_world)
    #     expect(hello_world.author).to eq(betty)
    #   end
    # end


    def add_post(post) #post obj?
      
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
    end

    def self.post_count #class method
        Post.all.count
    end

end

#Author.new("Octavia Butler")

