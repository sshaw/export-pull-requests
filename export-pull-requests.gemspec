require "date"

Gem::Specification.new do |s|
  s.name        = "export-pull-requests"
  s.version     = "0.1.0"
  s.date        = Date.today
  s.summary     = "Export pull requests to a CSV file."
  s.description = "Program to export GitHub pull requests or GitLab merge requests to CSV a file."
  s.authors     = ["Skye Shaw"]
  s.email       = "skye.shaw@gmail.com"
  s.executables  << "epr"
  s.homepage    = "https://github.com/sshaw/export-pull-requests"
  s.license     = "MIT"
  s.add_dependency "github_api", "~> 0.16"
  s.add_dependency "gitlab", "~> 4.0"
  s.add_development_dependency "rake", "~> 0.9.2"
end
