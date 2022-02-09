require "date"

Gem::Specification.new do |s|
  s.name        = "export-pull-requests"
  s.version     = "0.4.0"
  s.date        = Date.today
  s.summary     = "Export pull requests and issues to a CSV file."
  s.description = "Program to export GitHub, GitLab, or Bitbucket pull requests/merge requests and issues to CSV a file."
  s.authors     = ["Skye Shaw"]
  s.email       = "skye.shaw@gmail.com"
  s.executables  << "epr"
  s.extra_rdoc_files = %w[README.md Changes]
  s.homepage    = "https://github.com/sshaw/export-pull-requests"
  s.license     = "MIT"
  s.add_dependency "github_api", "~> 0.16"
  s.add_dependency "gitlab", "~> 4.0"
  # 1.3 is needed for Ruby >= v3
  # As of epr v4, Bitbucket API client supports < 1
  s.add_dependency "faraday", ">= 1.3", "< 2"
  s.add_development_dependency "rake", ">= 12.3.3"
  s.post_install_message = "Use the `epr' command to export your pull requests."
end
