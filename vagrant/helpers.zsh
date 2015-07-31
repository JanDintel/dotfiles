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
