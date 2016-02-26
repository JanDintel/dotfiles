# Helper methods for Vagrant

# Tail the log of a Rails application
#
# Usage:
#  $ vagrant_application_log demo_app
#
vagrant_application_log() {
  [[ -n $1 ]] || { echo -e "\033[0;31mPlease specify the application!\033[0m"; return 1; }

  vagrant ssh -c "cd /vagrant/$1; tail -f log/development.log"
}

# Run command in directory of a Rails application
#
# Usage:
#  $ vagrant_application_command demo_app be rake db:migrate
#
vagrant_application_command() {
  [[ -n $1 ]] || { echo -e "\033[0;31mPlease specify the application!\033[0m"; return 1; }

  APP="$1"
  shift

  vagrant ssh -c "cd /vagrant/$APP; $@"
}
