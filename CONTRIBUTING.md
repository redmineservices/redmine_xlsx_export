# Contributing

Bug reports and pull requests are welcome on GitHub.

## Development

Install the plugin as `plugins/redmine_xlsx_export` in a supported Redmine
checkout, configure the test database, install dependencies, and verify that
Redmine boots with the plugin:

```sh
bundle install
RAILS_ENV=test bundle exec rake db:migrate redmine:plugins:migrate
RAILS_ENV=test bundle exec rails runner \
  'abort "plugin not loaded" unless Redmine::Plugin.registered_plugins.key?(:redmine_xlsx_export)'
```

Please include tests for behavior changes. Commits should follow Conventional
Commits, for example `fix: preserve issue links in XLSX exports`.
