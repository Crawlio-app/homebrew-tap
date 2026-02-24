# Crawlio Homebrew Tap

Homebrew formulae for [Crawlio](https://crawlio.app) — the macOS website downloader.

## Install

```bash
brew tap crawlio-app/tap
brew install crawlio
```

Or as a one-liner:

```bash
brew install crawlio-app/tap/crawlio
```

### Desktop app (Crawlio.app)

```bash
brew install --cask crawlio-app/tap/crawlio
```

The cask installs Crawlio.app and symlinks the CLI to your PATH automatically.

## What's included

| Formula | Description |
|---------|-------------|
| `crawlio` | CLI binary — start crawls, watch progress, export sites |
| `crawlio` (cask) | Crawlio.app — full desktop app with GUI + CLI + MCP server |

## Requirements

- macOS 15 (Sequoia) or later
- The CLI connects to the running Crawlio.app via HTTP on localhost

## Links

- [Documentation](https://crawlio.app/docs/cli-overview)
- [Source](https://github.com/Crawlio-app/crawlio)
