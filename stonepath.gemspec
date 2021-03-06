# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: stonepath 0.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "stonepath"
  s.version = "0.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["David Bock"]
  s.date = "2014-08-28"
  s.description = "Stateful workflow modeling for Rails"
  s.email = "aj@thewhat.co"
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    "History.txt",
    "Manifest.txt",
    "PostInstall.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/generators/stonepath.rb",
    "lib/generators/stonepath/event_log/event_log_generator.rb",
    "lib/generators/stonepath/event_log/templates/create_event_records.rb",
    "lib/generators/stonepath/event_log/templates/event_record.rb",
    "lib/generators/stonepath/events_scaffold/events_scaffold_generator.rb",
    "lib/generators/stonepath/task/USAGE",
    "lib/generators/stonepath/task/task_generator.rb",
    "lib/generators/stonepath/task/templates/migration.rb",
    "lib/generators/stonepath/task/templates/task.rb",
    "lib/generators/stonepath/workitem_model/templates/migration.rb",
    "lib/generators/stonepath/workitem_model/templates/model.rb",
    "lib/generators/stonepath/workitem_model/workitem_model_generator.rb",
    "lib/stonepath.rb",
    "lib/stonepath/config.rb",
    "lib/stonepath/dot.rb",
    "lib/stonepath/event_logging.rb",
    "lib/stonepath/extensions/action_view.rb",
    "lib/stonepath/extensions/rails_generator_commands.rb",
    "lib/stonepath/railtie.rb",
    "lib/stonepath/task.rb",
    "lib/stonepath/work_bench.rb",
    "lib/stonepath/work_item.rb",
    "lib/stonepath/work_owner.rb",
    "lib/tasks/stonepath.rake",
    "rails/init.rb",
    "script/console",
    "script/destroy",
    "script/generate",
    "stonepath.gemspec",
    "stonepath.pdf",
    "test/app_root/app/controllers/application_controller.rb",
    "test/app_root/app/models/assignment.rb",
    "test/app_root/app/models/case.rb",
    "test/app_root/app/models/custom_assignment.rb",
    "test/app_root/app/models/event_record.rb",
    "test/app_root/app/models/user.rb",
    "test/app_root/config/boot.rb",
    "test/app_root/config/database.yml",
    "test/app_root/config/environment.rb",
    "test/app_root/config/environments/in_memory.rb",
    "test/app_root/config/environments/mysql.rb",
    "test/app_root/config/environments/postgresql.rb",
    "test/app_root/config/environments/sqlite.rb",
    "test/app_root/config/environments/sqlite3.rb",
    "test/app_root/config/routes.rb",
    "test/app_root/db/migrate/01_create_users.rb",
    "test/app_root/db/migrate/02_create_assignments.rb",
    "test/app_root/db/migrate/03_create_cases.rb",
    "test/app_root/db/migrate/04_create_event_records.rb",
    "test/app_root/lib/console_with_fixtures.rb",
    "test/app_root/log/.gitignore",
    "test/app_root/script/console",
    "test/custom_task_test.rb",
    "test/fixtures/users.yml",
    "test/logging_test.rb",
    "test/stonepath_test.rb",
    "test/task_test.rb",
    "test/test_helper.rb",
    "test/workitem_test.rb",
    "test/workowner_test.rb"
  ]
  s.homepage = "http://github.com/thewhat/stonepath"
  s.rubygems_version = "2.2.2"
  s.summary = "Stonepath: stateful workflow modeling for rails"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 3.0.0"])
      s.add_runtime_dependency(%q<aasm>, [">= 2.2.0"])
      s.add_runtime_dependency(%q<sentient_user>, [">= 0.3.2"])
    else
      s.add_dependency(%q<activerecord>, [">= 3.0.0"])
      s.add_dependency(%q<aasm>, [">= 2.2.0"])
      s.add_dependency(%q<sentient_user>, [">= 0.3.2"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 3.0.0"])
    s.add_dependency(%q<aasm>, [">= 2.2.0"])
    s.add_dependency(%q<sentient_user>, [">= 0.3.2"])
  end
end

