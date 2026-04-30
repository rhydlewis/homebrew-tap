# homebrew-tap

Homebrew formulas for tools by [Rhyd Lewis](https://github.com/rhydlewis).

## Install

```sh
brew tap rhydlewis/tap
brew install lpxtool
```

Or, in one shot:

```sh
brew install rhydlewis/tap/lpxtool
```

## Available formulas

### `lpxtool`

Read-only Logic Pro project inspector — extracts the AU plugin manifest, tracks, and metadata from `.logicx` bundles without opening Logic. See [`lpx-toolkit`](https://github.com/rhydlewis/lpx-toolkit) for the full project.

```sh
brew install rhydlewis/tap/lpxtool
lpx-toolkit ~/Music/Logic/SomeProject.logicx
```

Both `lpx-toolkit` and `lpxtool` are installed; they invoke the same tool.

## Updating a formula

When `lpx-toolkit` cuts a new release on PyPI, update the formula's `url` and `sha256`:

```sh
curl -s https://pypi.org/pypi/lpx-toolkit/<version>/json \
  | python3 -c "import json,sys; d=json.load(sys.stdin); [print(u['url'], u['digests']['sha256']) for u in d['urls'] if u['packagetype']=='sdist']"
```

Then edit `Formula/lpxtool.rb` (`url` + `sha256` lines) and commit.
