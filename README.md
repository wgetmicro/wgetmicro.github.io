# wgetmicro

![Test](https://github.com/benweissmann/getmic.ro/workflows/Test/badge.svg)

The fastest way to install [Micro](https://micro-editor.github.io/)

`wget -O- https://wgetmicro.github.io | bash`

This script will install micro to the directory you're in. To install somewhere else (e.g. /usr/local/bin), cd there and make sure you can write to that directory, e.g. `cd /usr/local/bin; wget -O- https://wgetmicro.github.io | sudo bash`

## Advanced usage

There's a couple other things you can do with getmic.ro.

### Use another POSIX shell

While getmic.ro is tested primarily with bash, it should be compatible with any POSIX shell (we test zsh, dash, ksh, and busybox). If you don't have `bash`, you can just use:

`wget -O- https://wgetmicro.github.io | sh`

### Verify the script checksum

To verify the script, you can download it and checksum it. The sha256 checksum is `c247504054b22dd103689a49221ae582cf514c8f4c4254c7f864565651c87f3c`.

    wget -O getmicro.sh https://wgetmicro.github.io
    shasum -a 256 getmicro.sh # and check the output
    bash getmicro.sh

## Contributing

Thank you for contributing! We use the Github pull request workflow: fork this repo, make your changes, and then submit a pull request. There's a couple things you'll need to do to get your PR merged:

- Make sure all of the tests pass. Github Actions will report test failures on the PR page once you open it.

- If you introduce new behavior, update the Github Actions tests (in [`.github/workflows/test.yml`](https://github.com/benweissmann/getmic.ro/blob/master/.github/workflows/test.yml)) to test that behavior.

- If you introduce new user-facing options or behavior, update the README files to document that behavior (don't translate if you don't know the destination file's language).

If you're not sure how to do any of these things, feel free to open a PR with your work-in-progress and whatever questions you have!

## Acknowledgments:

- Micro, of course: https://micro-editor.github.io/

- Loosely based on the Chef curl|bash: https://docs.chef.io/install_omnibus.html

- ASCII art courtesy of figlet: http://www.figlet.org/
