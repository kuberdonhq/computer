# Computer

One command to set up a Kuberdon MacBook.

Computer turns a new Mac into a machine you can build apps on: the apps we work in, the
tools we build with, 1Password at the centre and a few sensible macOS settings. Run it
again any time. It only adds what is missing, so a second run changes nothing.

It is how we set up our own laptops at [Kuberdon](https://kuberdon.eu). Inspired by
[thoughtbot/laptop](https://github.com/thoughtbot/laptop).

## Run it

```sh
git clone https://github.com/kuberdonhq/computer.git ~/Developer/computer
cd ~/Developer/computer
./computer
```

A brand new Mac asks for Apple's command line tools the first time `git` runs. Install
them, then run the lines above again.

```sh
./computer doctor     # what is missing or out of date, changes nothing
./computer --dry-run  # what it would do, changes nothing
```

## What it sets up

**Apps**

| App | Why |
| --- | --- |
| 1Password | Every password, SSH key and secret. Nothing secret lives in a file. |
| Claude and Claude Code | Thinking, writing and building. |
| Conductor | Several Claude Code sessions side by side, each in its own worktree. |
| Notion | Notes, plans and docs. |
| Linear | What we are building, and who is on it. |
| Superhuman | Email, for everyone. |
| Google Chrome | The browser. |
| Rectangle | Windows to halves and thirds from the keyboard. |
| Xcodes, Visual Studio Code, Docker | Building and running the apps. |

**Command line:** git, gh, mise (Node), pnpm, Watchman, CocoaPods, fastlane, Maestro, the
Supabase CLI, jq and ImageMagick. The full list is the [Brewfile](Brewfile).

**1Password:** your SSH keys stay in 1Password and its SSH agent signs every commit, so no
private key sits on the disk.

**macOS:** file extensions and the path bar in Finder, screenshots in their own folder, fast
key repeat and no smart quotes. That is all; see [macos/defaults.sh](macos/defaults.sh).

**The look:** the Kuberdon wallpaper from our [press kit](https://kuberdon.eu/press).

## What you do yourself

Computer never touches a password. At the end it opens each app for you to sign in:
1Password first, then GitHub, Claude, Notion, Linear and Superhuman.

## Make it yours

Fork it, or keep your own extras in `~/.computer.local`. Computer runs that file last
when it exists, like thoughtbot/laptop's `~/.laptop.local`:

```sh
# ~/.computer.local
brew install --cask spotify
defaults write com.apple.dock autohide -bool true
```
