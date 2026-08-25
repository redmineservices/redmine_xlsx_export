require 'redmine'
require_dependency 'query'

# Top-level requires (nested Rails.configuration.to_prepare requires silently no-op
# under Redmine 6 / Zeitwerk plugin loading).
require_relative 'lib/redmine_xlsx_export/xlsx_export_helper'
require_relative 'lib/redmine_xlsx_export/xlsx_report_helper'
require_relative 'lib/redmine_xlsx_export/xlsx_users_helper'
require_relative 'lib/redmine_xlsx_export/files_query_column'
require_relative 'lib/redmine_xlsx_export/other_formats_builder'
require_relative 'lib/redmine_xlsx_export/view_layouts_base_body_bottom_hook'
require_relative 'lib/redmine_xlsx_export/issues_controller_patch'
require_relative 'lib/redmine_xlsx_export/timelog_controller_patch'
require_relative 'lib/redmine_xlsx_export/users_controller_patch'
require_relative 'lib/redmine_xlsx_export/projects_controller_patch'

Redmine::Plugin.register :redmine_xlsx_export do
  name 'Redmine XLSX Export'
  author 'Tatsuya Saito and contributors; maintained by Redmine Services'
  description 'Export issues, time entries, users and projects to XLSX'
  version '0.2.0'
  url 'https://github.com/redmineservices/redmine_xlsx_export'
  author_url 'https://redmineservices.com'
  requires_redmine version_or_higher: '5.0.0'
end

# Top-level prepends — nested Rails.configuration.to_prepare silently no-ops
# under Redmine 6 plugin loading (F3 discovery).
IssuesController.prepend(RedmineXlsxExport::IssuesControllerPatch)     unless IssuesController.include?(RedmineXlsxExport::IssuesControllerPatch)
TimelogController.prepend(RedmineXlsxExport::TimelogControllerPatch)   unless TimelogController.include?(RedmineXlsxExport::TimelogControllerPatch)
UsersController.prepend(RedmineXlsxExport::UsersControllerPatch)       unless UsersController.include?(RedmineXlsxExport::UsersControllerPatch)
ProjectsController.prepend(RedmineXlsxExport::ProjectsControllerPatch) unless ProjectsController.include?(RedmineXlsxExport::ProjectsControllerPatch)
