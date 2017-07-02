class PagesController < ApplicationController
  skip_before_filter :authenticate_user!
  layout false

  def index

    #heaadding_news
    @video_header_home = VideoHeaderHome.all.last
    @news_mundial_motocross = NoticiasNew.where(category_new: 'mundial_motocross')
    @news_ama_motocross = NoticiasNew.where(category_new: 'ama_motocross')
    @news_ama_supercross = NoticiasNew.where(category_new: 'ama_supercross')
    @news_brasileiro_motocross= NoticiasNew.where(category_new: 'brasileiro_motocross')
    @news_arena_cross = NoticiasNew.where(category_new: 'arena_cross')

    #container_news
    @news_brasil = NoticiasNew.where(origin_news: 'brasil')
    @news_mundo = NoticiasNew.where(origin_news: 'mundo')
  end
end
