# gravtastic-app



## Development Setup

### Clone the repo
```
git clone git@bitbucket.org:fizzysoftware/interakt.git
```

### Install dependencies (ensure bundler is installed)
```
cd interakt
bundle install
```
Version of Postgresql
Minimum version of pg is 9.2.4 below versions don't provide support for the json.

CREATE database config (sample config is in config/database_sample.yml)
```
cp config/database_sample.yml config/database.yml
# make the appropirate changes if necessary
```
Setup DB
```
rake db:create
rake db:migrate
rake db:seed
```
Make sure you have redis & memcached installed and running on your system. Then run Sidekiq and memcached with commands
```
sidekiq -C config/sidekiq.yml
/usr/local/bin/memcached/
```

Chat server is working on slanger/pusher, It require minimum Ruby 2.1.2
Command to start slanger:-
```
slanger --app_key d55a159cf2da08410a99 --secret 24manoj24
```

# We are using git hooks for auto bundle and migrate on merge:
```
cp git_templates/post-merge.sample .git/hooks/post-merge && chmod +x .git/hooks/post-merge

cp git_templates/pre-commit .git/hooks/pre-commit && chmod +x .git/hooks/pre-commit
```

# Administration

You can access the admin console by visiting http://localhost:3000/admin. You can find out credentials in db/seed.rb file :)
