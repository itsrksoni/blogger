class Tag < ApplicationRecord
    has_many :taggings
    has_many :articles, through: :taggings
    

 
    # def comments=(tag)
    # #    t = self.find(tag_v)
    # #    t1= t.articles
    #      a=tag.id  
    # end


    def comments
        ab=[]
        self.articles.each do |a|
           a.comments.each do |b|
           ab.append(b)
         end
        end
      ab
     end




end
