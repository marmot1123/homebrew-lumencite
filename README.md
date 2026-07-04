# homebrew-lumencite

Homebrew tap for [LumenCite](https://github.com/marmot1123/LumenCite) — a desktop
reference (bibliography) manager for researchers, built with Tauri 2 + React.

## Install

```sh
brew install --cask marmot1123/lumencite/lumencite
```

Or add the tap first, then install:

```sh
brew tap marmot1123/lumencite
brew install --cask lumencite
```

## Upgrade

LumenCite ships an in-app auto-updater (macOS), so it usually updates itself.
To upgrade the cask metadata via Homebrew:

```sh
brew update
brew upgrade --cask lumencite
```

## Uninstall

```sh
brew uninstall --cask lumencite       # remove the app
brew uninstall --zap --cask lumencite # also remove library data (database, caches)
```

## Notes

- macOS only (universal binary: Apple Silicon + Intel). Requires macOS 11 Big Sur or later.
- The `.dmg` is Developer ID signed and notarized by Apple.
- Windows / Linux builds are on the [GitHub Releases](https://github.com/marmot1123/LumenCite/releases) page.
