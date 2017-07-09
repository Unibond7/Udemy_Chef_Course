package 'vim-enhanced'
package 'emacs'
package 'nano'
package 'ntp'

package 'tree' do
  action :install
end

package 'git' do
  action :install
end

#node['ipaddress']
#node['memory']['total']

file 'etc/motd' do
  content "This server is the property of Tim Mambo
  HOSTNAME: #{node['hostname']}
  IPADDRESS: #{node['ipaddress']}
  CPU: #{node['cpu']['0']['mhz']}
  MEMORY: #{node['memory']['total']}
"
  action :create
  owner 'root'
  group 'root'
end
