#INDEX
get '/tags' do 
  @tags = tag.all
  erb :'tags/index'
end
 
#NEW 
get '/tags/new' do 
  erb :'tags/new'
end

#SHOW
get '/tags/:id' do 
  @authors = Author.all
  @tag = Tag.find(params[:id])
  erb :'tags/show'
end
 
# CREATE
post '/tags' do
  tags = Tag.new(params[:tag])
  if tags.save
    redirect("/tags/#{tag.id}")
  else
    redirect("/tags/new")
  end
end
 
 #DESTROY
delete '/tags/:id' do
  tag = Tag.find(params[:id])
  if tag.destroy
    redirect '/tags'
  else
    redirect "/tags/#{tag.id}"
  end
end
 
 #ADD A MICROPOST TO A TAG
put '/tags/:id/add_micropost' do
  tag = Tag.find(params[:id])
  micropost = Micropost.find(params[:micropost_id])
  tag.microposts.push(author)
  redirect "/tags/#{tag.id}"
end
 
 #REMOVE A MICROPOST FROM A TAG
put '/tags/:id/remove_micropost' do
  tag = Tag.find(params[:id])
  micropost = Micropost.find(params[:micropost_id])
  tag.microposts.destroy(micropost)
  redirect "/tags/#{tag.id}"
end
