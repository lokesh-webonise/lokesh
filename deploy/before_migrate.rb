<<<<<<< HEAD
test = Chef::EncryptedDataBagItem.load("credentials", "abc")
adapter = test["adapter"]
host = test["host"]
username = test["username"]
password = test["password"]
database = test["database"]

=======
>>>>>>> 3ff38b8fcbdaa719e0d8d81ab5eab1102ee80c76
file "/tmp/lokesh" do
	action :create
end

<<<<<<< HEAD
template "#{release_path}/wp-config.php" do
  source "test.erb"
  cookbook "webonise_projects"
  variables({:adapter => node['deploy']['app_name'], :host => host, :username => username, :password => password, :database => database})
end
=======
template "#{release_path}/test.rb" do
  source "test.erb"
  cookbook "webonise_projects"
  variables({:adapter => node['deploy']['app_name']})
end
>>>>>>> 3ff38b8fcbdaa719e0d8d81ab5eab1102ee80c76
