# INDEX
get '/microposts' do
	@microposts = Micropost.all
	erb :'microposts/index'
end

# NEW
get '/microposts/new' do
 @authors = Author.all
 @tags = Tag.all
 erb :'microposts/new'
end

# SHOW
get '/microposts/:id' do
	@author = Author.all
	@micropost = Micropost.find(params[:id])
	erb :'microposts/show'
end


#CREATE
post '/microposts' do
	micropost = Micropost.create(params[:micropost])
	params[:tag_id].each do |id|
	micropost.tags << Tag.find(id)
	end
	redirect("/microposts/#{micropost.id}")
	 
end

# EDIT
get '/microposts/:id/edit' do
	@micropost = Micropost.find(params[:id])
  @authors = Author.all
  @tags = Tag.all
	erb :'microposts/edit'
	
end

# UPDATE
put '/microposts/:id' do
	micropost = Micropost.find(params[:id])
	if micropost.update(params[:micropost])
		redirect("/microposts/#{micropost.id}")
	else
		redirect("/microposts/#{micropost.id}/edit")
	end
end

# DESTROY
delete '/microposts/:id' do
	micropost = Micropost.find(params[:id])
	if micropost.destroy
		redirect('/microposts')
	else
		redirect("/microposts/#{micropost.id}")
	end
end

