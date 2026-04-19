# homebrew-tap

Third party homebrew tap to install the tools to4iki is involved in developing.

## Usage

tap and install:

```sh
brew tap to4iki/tap
brew install <tool>
```

install directly:

```sh
brew install to4iki/tap/<tool>
```

## Formulae

| Formula | Description | Upstream |
| --- | --- | --- |
| [`funpou`](Formula/funpou.rb) | Quick one-line memos with automatic timestamps (`fnp`) | [to4iki/funpou](https://github.com/to4iki/funpou) |

## Maintenance

This tap uses [`Songmu/maltmill`](https://github.com/Songmu/maltmill) to create and update
formulae from GitHub Releases.

### Install maltmill

```sh
brew install Songmu/tap/maltmill
```

### Add a new formula

```sh
make new SLUG=owner/repo             # writes Formula/repo.rb
make new SLUG=owner/repo NAME=alias  # writes Formula/alias.rb
```

Review the generated file and tweak `def install` / `test do` as needed. Upstream release assets
must include `darwin` / `linux` and `amd64` / `arm64` in their filenames so that maltmill can
detect platform pairs.

### Update formulae locally

```sh
export GITHUB_TOKEN=<PAT or gh auth token>
make update
```

### Update via GitHub Actions

Run the [`update-formula`](.github/workflows/update-formula.yml) workflow manually from the
Actions tab. It executes `make update` and opens a pull request when any formula changes.
Only `version`, `url`, and `sha256` are rewritten — hand-edited sections such as `def install`
and `test do` are preserved.
