maintainer       "Intuit, Inc."
maintainer_email "brett_weaver@intuit.com"
license          "Apache 2.0"
description      "Installs and configures Jenkins CI server & slaves"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

%w{ redhat }.each do |os|
    supports os
end

%w(runit java yum).each { |cb| depends cb }
