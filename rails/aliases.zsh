# Aliases for Rails
alias rdm='rake db:migrate'
alias rdmt='rake db:migrate RAILS_ENV=test'
alias rdr='rake db:reset'
alias rdrt='rake db:reset RAILS_ENV=test'
alias rdrh='rake db:drop; rake db:create; rake db:migrate'
alias rdrht='rake db:drop RAILS_ENV=test; rake db:create RAILS_ENV=test; rake db:migrate RAILS_ENV=test'