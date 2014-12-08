name             "couchbase_t3n_fork"
maintainer       "Julian C. Dunn"
maintainer_email "jdunn@getchef.com"
license          "MIT"
description      "Installs and configures Couchbase Server."
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))
version          "1.3.0"

%w{debian ubuntu centos redhat oracle amazon scientific windows}.each do |os|
  supports os
end

%w{apt openssl windows yum}.each do |d|
  depends d
end

recipe "couchbase_t3n_fork::server", "Installs couchbase-server"
recipe "couchbase_t3n_fork::client", "Installs libcouchbase"
recipe "couchbase_t3n_fork::moxi", "Installs moxi-server"
