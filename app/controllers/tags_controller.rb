class TagsController < ApplicationController
def show
    @tag = Tag.find(params[:id])
    #tag_v=@tag.id
    
    
   
end

def index
    @tags= Tag.all
end


end