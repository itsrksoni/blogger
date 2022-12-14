class Article < ApplicationRecord
    has_many :comments, dependent: :destroy
    has_many :taggings, dependent: :destroy
    has_many :tags, through: :taggings
    belongs_to :user
   


    def tag_list
        self.tags.collect do |tag|
            tag.name
          end.join(", ")
    end
    def tag_list=(tags_string)
        tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
        new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
        self.tags = new_or_found_tags
    end
    
    def next
        if self == Article.last
            self
        else
            b = self.id
        Article.find(b+1)
            end
       
    end
    
end