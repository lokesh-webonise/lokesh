file "/tmp/lokesh" do
	action :create
end

template "test.rb" do
  source "test.erb"
  cookbook "webonise_projects"
  variables({:adapter => node['deploy']['app_name']})
end
