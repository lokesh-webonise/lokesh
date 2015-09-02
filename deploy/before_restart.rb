file "/tmp/lokesh" do
	action :create
end

template "#{release_path}/test.rb" do
  source "test.erb"
  cookbook "webonise_projects"
  variables({:adapter => node['deploy']['app_name']})
end
