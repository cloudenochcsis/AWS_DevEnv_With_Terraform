echo "
# SSH configuration for DevEnv Instance
Host devenv
  HostName ${hostname}
  User ${user}
  IdentityFile ${identityfile}
  StrictHostKeyChecking no
  UserKnownHostsFile /dev/null
" >> ~/.ssh/config

echo "SSH config has been added. You can now use 'ssh devenv' to connect to your instance."