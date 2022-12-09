class ArticlesController < ApplicationController
    def index
        @article= Article.all
    end

    def show
        @article= Article.find(params[:id])
       
        
    end
    
    def new
       @article=Article.new

    end

    def create
        
            @article = Article.new (params.require(:article).permit(:title, :body, :tag_list))#.except(:tags))
            # create_or_delete_article_tags(@article,params[:article][:tags])


           if @article.save
                redirect_to @article
           else 
                render "new" , status: :unprocessable_entity
           end
      
    end

    def edit
        @article = Article.find(params[:id])

    end

    def update
        @article= Article.find(params[:id])
        @article.update(params.require(:article).permit(:title, :body, :tag_list))
        redirect_to articles_path

    end

    def destroy

        @article= Article.find(params[:id])
        @article.destroy
        redirect_to articles_path
    
    end

end

private

# def create_or_delete_article_tags(article,tags)
#    # article.taggings.destroy_all
#     @tags = tags.strip.split(',')
#     @tags.each do |tag|
#         article.tags << Tag.find_or_create_by(name: tag)
#     end
# end