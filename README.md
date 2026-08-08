# braelyn-ai/tap

Homebrew tap for [Passband](https://passband.app), the Mac client for
squelchd.

```sh
brew install --cask braelyn-ai/tap/passband
```

The cask is bumped automatically by the Passband release script
(`passband/release.sh` in the main repo). Updates after install come from
the app's own Sparkle updater; `brew upgrade` works too.
