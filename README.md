# RubyJax

This is the official RubyJax website

## Installation

This README assumes you are part of the RubyJax organization as a developer.
If you're not, please contact an organizer for access.

Clone the repo.

```sh
git clone http://github.com/rubyjax/rubyjax.org
#or
git clone git@github.com:rubyjax/rubyjax.org
```

Make sure your ruby is up to date ([RVM](https://rvm.io/))

```sh
cd /path/to/project
rvm install ruby-2.3.0-
```

Install gems

```sh
gem install bundler
bundle install --jobs 4
```

Setup your database (Postgresql)

Mac - `brew install postgres` to install 
<pre>
To have launchd start postgresql now and restart at login:
  brew services start postgresql
Or, if you don't want/need a background service you can just run:
  pg_ctl -D /usr/local/var/postgres start
</pre>

```sh
rails db:create db:migrate db:test:prepare
```
If this fails. Go into your `config/database.yml` and remove line #4 (`host: localhost`)

Get viewing
 
```sh
rails s
```

## Testing

```sh
rake
```



