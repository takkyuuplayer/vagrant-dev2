init:
	bundle install
	knife cookbook site install chef-dk
	sudo chef-solo -c solo.rb -j nodes/chef-dk.json
