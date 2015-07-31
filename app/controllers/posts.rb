#FOR POST

#CREATE-NEW
get '/categories/:c_id/posts/new' do
  category_id =params[:c_id] #find the respective category id so that i can get @category to be passed onto the CREATE CREATE
  @category = Category.find(category_id)
  # @posts =@category.posts
  erb :post_create
end

#CREATE-CREATE---
post '/categories/:c_id/posts' do
  params[:new_post][:category_id] = params[:c_id] # to assign the input newpost to fall same category id as the one (of page) i created on
   # post["secret_key"] = SecretKey.generate
  new_post = Post.create(params[:new_post])
  redirect to "/categories/#{params[:c_id]}"
end
#-------------------------------------------------


#READ-INDEX-----
# get '/categories/:c_id/posts' do
#   @post = Post.all
#   erb :category_show
# end

#READ-SHOW
get '/categories/:c_id/posts/:p_id' do
  @category = Category.find params[:c_id]
  @post = Post.find params[:p_id]
  @desc = @post.desc
  erb :post_show
end

#UPDATE-EDIT
get '/categories/:c_id/posts/:p_id/edit' do
  @category = Category.find params[:c_id]
  @post = Post.find params[:p_id]
  erb :post_edit
end

#UPDATE-UPDATE
post '/categories/:c_id/posts/:p_id' do
  @post = Post.find params[:p_id]
  @post.update(params[:post])
  redirect to "/categories/#{params[:c_id]}"
end

# #DELETE---
delete '/categories/:c_id/posts/:p_id' do
  @post = Post.find params[:p_id]
  @post.delete
   redirect to "/categories/#{params[:c_id]}"
end

