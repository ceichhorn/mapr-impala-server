#
# Cookbook Name:: gmti-mapr-impala-server
# Recipe:: default
#
# Copyright 2015, Gannett
#
# All rights reserved - Do Not Redistribute
#

package 'mapr-impala-server'

ruby_block 'Set Impala parameters' do
  block do
    file  = Chef::Util::FileEdit.new('/opt/mapr/impala/impala-1.4.1/conf/env.sh')
    file.search_file_replace_line('IMPALA_STATE_STORE_HOST=', "IMPALA_STATE_STORE_HOST=#{node['mapr']['impala_state']}")
    file.search_file_replace_line('CATALOG_SERVICE_HOST=', "CATALOG_SERVICE_HOST=#{node['mapr']['impala_catalog']}")
    file.write_file
  end
end

# Run configure.sh to get services to start, etc
bash '/opt/mapr/server/configure.sh -R' do
  action :run
end
