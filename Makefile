init:
	bundle install
	bundle exec -- knife cookbook site install chef-dk

vagrant_setup:
	vagrant plugin install vagrant-omnibus
	vagrant plugin install vagrant-berkshelf

white-box:
	rm -rf cookbooks; berks vendor cookbooks;
	sudo chef-solo -c solo.rb -j nodes/white-box.json
