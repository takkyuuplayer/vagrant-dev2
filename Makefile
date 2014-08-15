init:
	bundle install
	bundle exec -- knife cookbook site install chef-dk

vagrant_setup:
	vagrant plugin install vagrant-omnibus
	vagrant plugin install vagrant-berkshelf

chef-dk:
	sudo chef-solo -c solo.rb -j nodes/chef-dk.json
