Created database (micropost_db)
Db folder created and files:
	micropost_seed.rb
	shcema.sql

Controllers folder created and files:
	application_controller.rb
	authors_controller.rb
	microposts_controller.rb
	tags_controller.rb

Models folder created and files:
	author.rb
	micropost.rb
	tag.rb


created the link for the many to many relation between the microposts and the tags table in the micropost_seed.rb file

created the app.rb file where all the frameworks and ruby files are required in order to run the website, and ran my website on a local host.

created a views folder
	-created a home folder with the index file (homepage) for my Microblog site
	-Created an authors folder that contains index, show, new and edit files. With these files the user can see all the authors, just one autor, create an author, delete an author and edit them.
	-Created a microposts folder that contains index, show, edit and new files. With these files the user can see all the microposts, just one, create a new post, delete posts, tag posts and change authors.
	-Creaated a tags folder that contains index and show files. With these files the user can see all the available tags and all the microposts tagged in one specific tag. Also, the user can add or delete new microposts to a tag.

The checkboxes for adding tags when creating a new post where giving me a hard time. Was able to fix that looping into the microposts_tags table (join table) in the post route.

Finally added some styling to the site and checked that everything was working fine.

	http://tinypic.com/r/29xi0lw/8

http://tinypic.com/r/20a4gg5/8

