# homebrew-tap

Third party homebrew tap to install the tools to4iki is involved in developing.

## Usage

Add this tap:

```sh
brew tap to4iki/tap
```

Install a formula:

```sh
brew install to4iki/tap/funpou
```

Upgrade to the latest version:

```sh
brew update
brew upgrade funpou
```

Uninstall and remove the tap:

```sh
brew uninstall funpou
brew untap to4iki/tap
```

## Formulae

| Formula | Description | Upstream |
| --- | --- | --- |
| [`funpou`](Formula/funpou.rb) | Quick one-line memos with automatic timestamps (`fnp`) | [to4iki/funpou](https://github.com/to4iki/funpou) |

## Automation

Formulae in this tap are kept in sync with upstream releases by a scheduled GitHub Actions workflow
([`.github/workflows/update-formula.yml`](.github/workflows/update-formula.yml)) that polls the latest
release, updates the `version` / `sha256` fields, and opens a pull request. The workflow can also be
triggered manually from the Actions tab.
