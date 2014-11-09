require 'active_record'

require_relative '../models/author.rb'
require_relative '../models/micropost.rb'
require_relative '../models/tag.rb'

ActiveRecord::Base.establish_connection({
	adapter: 'postgresql',
	database: 'micropost_db',
	host: 'localhost'
})

kenny = Author.create({
	name: 'Kenny',
	birthdate: '19850215',
	photo_url: 'https://media.licdn.com/mpr/mpr/shrink_120_120/p/5/000/27f/33d/2c522fe.jpg',
	date_joined: '20130520',
	gender: 'Male'
	})

emily = Author.create({
	name: 'Emily',
	birthdate: '19870625',
	photo_url: 'https://www.linkedin.com/mpr/pub/image-_pqf9CCimbLuRwFVRv7e4nNPqRlVfYF1uk7iukwiqEdv4iUM_pqifULiqvve4coUWO6G/emily-connors.jpg',
	date_joined: '20120710',
	gender: 'Female'
	})

rebecca = Author.create({
	name: 'Rebecca',
	birthdate: '19860402',
	photo_url: 'https://pbs.twimg.com/profile_images/514287343910391809/-SOI7FpO.jpeg',
	date_joined: '20120710',
	gender: 'Female'
	})

trees = Micropost.create({
	date_created: '20140503',
	img_url: 'hhttp://upload.wikimedia.org/wikipedia/commons/e/eb/Ash_Tree_-_geograph.org.uk_-_590710.jpg',
	title: 'Trees',
	content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ac venenatis augue. Suspendisse eu felis sed erat ultrices suscipit. Proin sit amet ornare erat. Nam tempor ultrices tincidunt. Pellentesque id libero feugiat mi imperdiet semper',
	author_id: '1'
	})

bicycles = Micropost.create({
	date_created: '20130303',
	img_url: 'http://cdn.bicyclehero.com/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/t/e/tern_verge_x10_folding_bike_foldable_bicycle.jpg',
	title: 'Bicycles',
	content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ac venenatis augue. Suspendisse eu felis sed erat ultrices suscipit. Proin sit amet ornare erat. Nam tempor ultrices tincidunt. Pellentesque id libero feugiat mi imperdiet semper',
	author_id: '1'
	})

cabins = Micropost.create({
	date_created: '20140920',
	img_url: 'http://www.pinesislandpark.com/images/cabins/one-bedroom/island-park-cabin.jpg',
	title: 'Cabins',
	content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ac venenatis augue. Suspendisse eu felis sed erat ultrices suscipit. Proin sit amet ornare erat. Nam tempor ultrices tincidunt. Pellentesque id libero feugiat mi imperdiet semper',
	author_id: '3'})

tayrona = Micropost.create({
	date_created: '20121125',
	img_url: 'http://enphoto500x500.mnstatic.com/tayrona-natural-park_87235.jpg',
	title: 'Tayrona',
	content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ac venenatis augue. Suspendisse eu felis sed erat ultrices suscipit. Proin sit amet ornare erat. Nam tempor ultrices tincidunt. Pellentesque id libero feugiat mi imperdiet semper',
	author_id: '2'
	})

singapore = Micropost.create({
	date_created: '20140613',
	img_url: 'https://c1.staticflickr.com/1/18/70857870_6dfdfc8188.jpg',
	title: 'Singapore',
	content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ac venenatis augue. Suspendisse eu felis sed erat ultrices suscipit. Proin sit amet ornare erat. Nam tempor ultrices tincidunt. Pellentesque id libero feugiat mi imperdiet semper',
	author_id: '3'
	})

travel = Tag.create({
	name: 'travel'
	})

sports = Tag.create({
	name: 'sports'
	})

transport = Tag.create({
	name: 'transport'
	})

city = Tag.create({
	name: 'city'
	})

night = Tag.create({
	name: 'night'
	})

nature = Tag.create({
	name: 'nature'
	})


travel.microposts.push(tayrona, trees)
city.microposts.push(bicycles, tayrona, singapore)
nature.microposts.push(trees, singapore)




