# Export Pull Requests

Export pull requests to a CSV file.

Currently only supports GitHub.

## Installation

    cd path_to_repository
    bundle install  # http://bundler.io/

## Usage

    usage: epr [-s state] [-t token] [-c user1,user2...] user/repo1 [user/repo2...]
        -c, --creator=user1,user2,...    Export PRs created by the given username(s)
        -t, --token=TOKEN                API token
        -s, --state=STATE                Export PRs in the given state, defaults to open


The GitHub API token can also be set via the `EPR_TOKEN` environment variable.


    bundle exec ruby epr -s all sshaw/git-link sshaw/itunes_store_transporter > pr.csv

## Author

Skye Shaw [skye.shaw AT gmail]

## License

Released under the MIT License: www.opensource.org/licenses/MIT
