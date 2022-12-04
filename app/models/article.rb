class Article < ApplicationRecord
    has_many :comments, dependent: :destroy
    has_many :taggings
    has_many :tags, through: :taggings

    # def tags
    #     self.tags.collect do |tag|
    #         tag.name
    #       end.join(", ")
    # end
    # def tags=(tags_string)
    #     tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
    #     new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
    #     self.tags = new_or_found_tags

    # end
      
    
end