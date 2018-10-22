module Api
  class ArticlesController < ApplicationController
      def index
        articles = Article.order('created_at DESC');
        render json: {status: 'Success', message: 'Loaded articles', data:articles},status: :ok;
      end
   end
end
