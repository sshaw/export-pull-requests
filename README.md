# Export Pull Requests

Export pull requests/merge requests and/or issues to a CSV file.

Supports GitHub, GitLab, and Bitbucket.

## Installation

[Ruby](https://www.ruby-lang.org/en/documentation/installation/) is required.

With Ruby installed run:

    gem install export-pull-requests

This installs the `epr` executable.

## Usage

    usage: epr [-hv] [-s state] [-t token] [-c user1,user2...] user/repo1 [user/repo2...]
        -c, --creator=USER1,USER2,...    Export PRs created by given username(s); prepend `!' to exclude user
        -h, --help                       Show this message
        -p, --provider=NAME              Service provider: bitbucket, github, or gitlab; defaults to github
        -t, --token=TOKEN                API token
        -s, --state=STATE                Export PRs in the given state, defaults to open
        -v, --version                    epr version
        -x, --export=TYPE                What to export: pr, issues, or all; defaults to all

### Config

These can all be set by one of the below methods or [via the command line](#usage).

#### Token

The API token can be set by:

* `EPR_TOKEN` environment variable
* `epr.token` setting in `.gitconfig`
* `github.oauth-token` setting in `.gitconfig`

#### Default Service

github is the default. You can set a new default via `EPR_SERVICE`.

### Examples

Export open PRs and issues in `sshaw/git-link` and `sshaw/itunes_store_transporter`:

    epr sshaw/git-link sshaw/itunes_store_transporter > pr.csv

Export open pull request not created by `sshaw` in `padrino/padrino-framework`:

    epr -x pr -c '!sshaw' padrino/padrino-framework > pr.csv

Export open merge requests from a GitLab project:

    epr -x pr -p gitlab gitlab-org/gitlab-ce > pr.csv

Export all issues from a GitLab project:

    epr -x issues -p gitlab gitlab-org/gitlab-ce > pr.csv

## Service Notes

### Bitbucket

You can use [app passwords](https://confluence.atlassian.com/bitbucket/app-passwords-828781300.html) for the API token.
Just provide your token HTTP Auth style using: `username:app_password`.

### GitLab

Authentication can be done via a [personal access token](https://gitlab.com/profile/personal_access_tokens).

Currently the API endpoint URL is hardcoded to `https://gitlab.com/api/v4`.

Enterprise editions of GitLab have an [issue export feature](https://docs.gitlab.com/ee/user/project/issues/csv_export.html).

## Author

Skye Shaw [skye.shaw AT gmail]

## License

Released under the MIT License: www.opensource.org/licenses/MIT
