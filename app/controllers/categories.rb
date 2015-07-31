#FOR CATEGORY

#CREATE-NEW
get '/categories/new' do
  erb :category_create
end

#CREATE-CREATE---
post '/categories' do
  new_category = Category.create(params[:new_category])
  redirect to "/categories/#{new_category.id}"
end

#-------------------------------------------------


get '/' do
  redirect to "/categories"
end

#READ-INDEX-----
get '/categories' do
  @semua = Category.all
  erb :index
end

#READ-SHOW
get '/categories/:c_id' do
  @category = Category.find(params[:c_id])
  @posts = @category.posts
  erb :category_show
end

#UPDATE-EDIT
get '/categories/:c_id/edit' do
  @category = Category.find params[:c_id]
  erb :category_edit
end

#UPDATE-UPDATE
put '/categories/:c_id' do
  @category = Category.find params[:c_id]
  @category.update(params[:category])
  redirect to "/categories"
end

# #DELETE---
delete '/categories/:c_id' do
  @category = Category.find params[:c_id]
  @category.delete
  redirect to '/'
end

