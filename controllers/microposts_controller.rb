# INDEX
get '/microposts' do
	@microposts = Micropost.all
	erb :'microposts/index'
end

# NEW
get '/microposts/new' do
  @author = Author.all
	erb :'/microposts/new'
end

# SHOW
get '/microposts/:id' do
	@author = Author.all
	@micropost = Micropost.find(params[:id])
	erb :'microposts/show'
end

# CREATE
post '/microposts' do
	micropost = Micropost.new(params[:micropost])
	if micropost.save
		redirect("/microposts/#{micropost.id}")
	else
		redirect("/microposts/new")
	end
end

# EDIT
get '/microposts/:id/edit' do
	@micropost = Micropost.find(params[:id])
  @author = Author.all
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

