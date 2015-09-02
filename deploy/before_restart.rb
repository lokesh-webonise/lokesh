file "/tmp/lokesh" do
	action :create
end

template "#{current_release}/test.rb" do
  source "test.erb"
  cookbook "webonise_projects"
end
