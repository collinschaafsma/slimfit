source :rubygems

gem 'thin'
gem 'sinatra', '1.3.2'
gem 'json'
gem 'rack', '1.3.6'
gem 'rack-cache'
gem 'dalli'
gem 'activerecord'
# Fork contains more rake tasks
gem 'sinatra-activerecord', :git => 'git@github.com:shell/sinatra-activerecord.git'

group :development do
  gem 'foreman'
  gem 'sqlite3'
  gem 'ruby-debug19'
end

group :production do
  gem 'pg'
end

group :test do
  gem 'rspec', '~> 2.8.0'
  gem 'capybara'
  gem 'rack-test', :require => "rack/test"
  gem 'activerecord-nulldb-adapter'
end

