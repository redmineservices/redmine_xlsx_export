# Redmine XLSX Export

[![Tests](https://github.com/redmineservices/redmine_xlsx_export/actions/workflows/test.yml/badge.svg?branch=main)](https://github.com/redmineservices/redmine_xlsx_export/actions/workflows/test.yml)
[![Release](https://img.shields.io/github/v/release/redmineservices/redmine_xlsx_export)](https://github.com/redmineservices/redmine_xlsx_export/releases/latest)
![Redmine](https://img.shields.io/badge/Redmine-5.x%20%7C%206.x-B32024)
![Ruby](https://img.shields.io/badge/Ruby-3.1--3.3-CC342D?logo=ruby&logoColor=white)
[![License](https://img.shields.io/badge/license-GPL--2.0-blue.svg)](LICENSE.txt)

`redmine_xlsx_export` adds native XLSX downloads for Redmine issues, time
entries, users and projects.

This repository is the Redmine Services maintained port for current Redmine
and Rails versions. It is based on `redmine_xlsx_format_issue_exporter`,
originally created by Tatsuya Saito and later maintained by two-pack.

## Features

- XLSX export from issue lists.
- XLSX export from spent-time reports.
- XLSX export from user lists.
- XLSX export from project lists.
- Selectable columns and export options.
- Hyperlinks from workbook rows back to Redmine records.

## Compatibility

| Plugin | Redmine | Ruby used by CI |
| --- | --- | --- |
| 0.2.x | 5.0.x | 3.1 |
| 0.2.x | 5.1.x | 3.2 |
| 0.2.x | 6.0.x, 6.1.x | 3.3 |

## Installation

From the Redmine directory:

```sh
cd plugins
git clone https://github.com/redmineservices/redmine_xlsx_export.git
cd ..
bundle install
```

Restart Redmine. XLSX links then appear in the **Also available in** area of
the supported list pages.

The plugin uses the `write_xlsx` gem, which Bundler installs from the plugin
Gemfile.

## Upgrade

Back up the existing plugin directory, replace it with this repository, run
`bundle install`, and restart Redmine. This plugin has no database migrations.

## Development

See [CONTRIBUTING.md](CONTRIBUTING.md). Report security issues according to
[SECURITY.md](SECURITY.md).

## Credits

- Original plugin by Tatsuya Saito.
- Community fork by [two-pack](https://github.com/two-pack/redmine_xlsx_export).
- Parts of the exporter are based on Redmine's CSV export implementation.

The original copyright notice remains in [LICENSE.txt](LICENSE.txt).

## License

This project is licensed under the GNU General Public License v2.0. See
[LICENSE.txt](LICENSE.txt).
