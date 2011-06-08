PadrinoWeb.controllers :blog, :cache => true do

  get :index, :map => "/blog", :cache => false do
    @search = params[:q] if params[:q] && params[:q].size >= 4
    @posts  = Post.search(@search, :order => "updated_at desc", :page => (params[:page] || 1), :draft => false, :paginate => true)
    render 'blog/index'
  end

  get :rss, :map => "/blog.rss", :cache => false do
    content_type :rss, :charset => "UTF-8"
    @posts = Post.all(:limit => 10, :draft => false, :order => "updated_at desc")
    render 'blog/rss', :layout => false
  end

  get :show, :with => :id, :map => "/blog" do
    @post = Post.find_by_permalink(params[:id])
    not_found unless @post
    cache_key @post.cache_key
    render 'blog/show'
  end

  get :category, :with => :id, :map => "/blog/category", :cache => false do
    @category = Category.find_by_permalink(params[:id])
    @posts = Post.paginate(:category_ids => @category.id, :order => "created_at desc", :page => (params[:page] || 1), :draft => false)
    not_found unless @category
    render 'blog/index'
  end
end

