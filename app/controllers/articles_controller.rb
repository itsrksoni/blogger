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
        
            @article = Article.new( params.require(:article).permit(:title, :body))
           if 
                @article.save
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
        @article.update(params.require(:article).permit(:title, :body))
        redirect_to articles_path

    end

    def destroy

        @article= Article.find(params[:id])
        @article.destroy
        redirect_to articles_path
    
    end

end