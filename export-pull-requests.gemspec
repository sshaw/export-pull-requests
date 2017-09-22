require "date"

Gem::Specification.new do |s|
  s.name        = "export-pull-requests"
  s.version     = "0.2.0"
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
  s.add_dependency "bitbucket_rest_api", "~> 0.1"
  s.add_development_dependency "rake", "~> 0.9"
  s.post_install_message = "Use the `epr' command to export your pull requests."
end
