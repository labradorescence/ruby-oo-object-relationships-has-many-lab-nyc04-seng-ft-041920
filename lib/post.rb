class Post

    attr_accessor :title, :author

    @@all = []

    def initialize(title)
        @title = title
   
        @@all << self
    end

    def self.all #class method 
        @@all 
    end
    

    # describe '#author_name' do
    # it 'knows the name of its author' do
    #   sophie = Author.new('Sophie')
    #   post.author = sophie
    #   expect(post.author_name).to eq('Sophie')
    # end

    # it 'returns nil if the post does not have an author' do
    #   expect(post.author_name).to eq nil
    # end

    def author_name
        if self.author
            self.author.name
        else
            nil
        end
    end


end

# p1obj = Post.new("post_name")
# p1obj.posts #[]
# post.author = p1obj
# p1obj.posts #[]