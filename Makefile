init:
	bundle install
	bundle exec -- knife cookbook site install chef-dk

chef-dk:
	sudo chef-solo -c solo.rb -j nodes/chef-dk.json
