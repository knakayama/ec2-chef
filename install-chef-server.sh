#!/bin/bash

vagrant ssh --command bash <<EOT
sudo rpm -ivh "$CHEF_SERVER"
sudo chef-server-ctl reconfigure
sudo chef-server-ctl status
EOT

