# gravtastic-app



## Development Setup

### Clone the repo
```
git clone https://github.com/ghanshyamanand/gravtastic-app.git
```

### Install dependencies (ensure bundler is installed)
```
cd gravtastic-app
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
```
