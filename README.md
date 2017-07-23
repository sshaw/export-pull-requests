# Export Pull Requests

Export pull requests/merge requests to a CSV file.

Supports GitHub and GitLab.

## Installation

    cd path_to_repository
    bundle install  # http://bundler.io/

## Usage

    usage: epr [-hv] [-s state] [-t token] [-c user1,user2...] user/repo1 [user/repo2...]
        -c, --creator=user1,user2,...    Export PRs created by given username(s); prepend `!' to exclude user
        -h, --help                       Show this message
        -p, --provider=NAME              Service provider: gitlab or github; defaults to github
        -t, --token=TOKEN                API token
        -s, --state=STATE                Export PRs in the given state, defaults to open
        -v, --version                    epr version

### API Token

The API token can also be given by:

* `EPR_TOKEN` environment variable
* `epr.token` setting in .gitconfig
* `github.oauth-token` setting in .gitconfig

### Examples

Export all open and closed pull requests in `sshaw/git-link` and `sshaw/itunes_store_transporter`:

    bundle exec ruby epr -s all sshaw/git-link sshaw/itunes_store_transporter > pr.csv

Export open pull request not created by `sshaw` in `padrino/padrino-framework`:

    bundle exec ruby epr -c '!sshaw' padrino/padrino-framework > pr.csv

Export open merge requests from a GitLab project:

    bundle exec ruby epr -p gitlab gitlab-org/gitlab-ce > pr.csv

## Author

Skye Shaw [skye.shaw AT gmail]

## License

Released under the MIT License: www.opensource.org/licenses/MIT
