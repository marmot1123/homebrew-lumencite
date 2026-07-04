# homebrew-lumencite

Homebrew tap for [LumenCite](https://github.com/marmot1123/LumenCite) — a desktop
reference (bibliography) manager for researchers, built with Tauri 2 + React.

## Install

```sh
brew tap marmot1123/lumencite
brew trust marmot1123/lumencite   # Homebrew 6.0+ requires trusting third-party taps
brew install --cask lumencite
```

> **Why `brew trust`?** Since Homebrew 6.0, casks from third-party taps must be
> explicitly trusted before they can be installed. You only need to run it once
> per tap. Review [`Casks/lumencite.rb`](Casks/lumencite.rb) first if you like.

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
