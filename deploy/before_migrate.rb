test = Chef::EncryptedDataBagItem.load("credentials", "abc")
adapter = test["adapter"]
host = test["host"]
username = test["username"]
password = test["password"]
database = test["database"]

file "/tmp/lokesh" do
	action :create
end

template "#{release_path}/wp-config.php" do
  source "test.erb"
  cookbook "webonise_projects"
  variables({:adapter => node['deploy']['app_name'], :host => $host, :username => $username, :password => $password, :database => $database})
end
