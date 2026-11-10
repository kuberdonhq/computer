<a href="https://kuberdon.eu"><img src=".github/assets/kuberdon-banner.svg" alt="Kuberdon" width="100%"></a>

# Computer

**One command, ready to build.**

This is how we set up a Mac at Kuberdon. A new laptop runs one command and ends up with
the apps we work in, the tools we build with, and a few settings that get out of the way.
Run it again any time: it only adds what is missing, so a second run changes nothing.

It is open, so you can read every line, or make it yours. Inspired by
[thoughtbot/laptop](https://github.com/thoughtbot/laptop).

## Run it

```sh
git clone https://github.com/kuberdonhq/computer.git ~/Developer/computer
cd ~/Developer/computer
./computer
```

A brand new Mac asks for Apple's command line tools the first time `git` runs. Install
them, then run the lines above again.

Two modes that change nothing:

```sh
./computer doctor     # what is missing or out of date
./computer --dry-run  # what it would do
```

## What we work in, and why

| App | Why |
| --- | --- |
| 1Password | Every password, SSH key and secret. Nothing secret lives in a file. |
| Claude | Thinking, writing and building, in the app and in the terminal. |
| Conductor | Several Claude Code sessions side by side, each in its own worktree. |
| Notion | Notes, plans and docs. |
| Linear | What we are building, and who is on it. |
| Superhuman | Email, for everyone. |
| Rectangle | Windows to halves and thirds from the keyboard. |
| Xcode | Our apps are made for iPhone first. Installed through Xcodes. |

Plus Google Chrome, Visual Studio Code and Docker.

## The tools we build with

git, gh, mise, Node, pnpm, Watchman, CocoaPods, fastlane, Maestro, the Supabase CLI, jq
and ImageMagick.

All from one [Brewfile](Brewfile). Add a line, run Computer again, and every Mac gets it.

## Three rules it never breaks

1. **Secrets stay in 1Password.** SSH keys live in 1Password and its agent signs every
   commit. No private key sits on the disk, and no secret goes in a file.
2. **Run it twice, nothing changes.** Every step checks first. Run it on a new Mac or a
   year-old one: it adds what is missing and leaves the rest alone.
3. **You sign in yourself.** Computer never touches a password. At the end it opens
   1Password, then GitHub, Claude, Notion, Linear and Superhuman, for you to sign in.

## A few settings, and the look

File extensions and the path bar in Finder, screenshots in their own folder, fast key
repeat and no smart quotes. That is all; see [macos/defaults.sh](macos/defaults.sh).

Then the Kuberdon wallpaper from our [press kit](https://kuberdon.eu/press), and the
avatar for your user picture.

## Make it yours

Fork it, or keep your own extras in `~/.computer.local`. Computer runs that file last
when it exists:

```sh
# ~/.computer.local
brew install --cask spotify
defaults write com.apple.dock autohide -bool true
```

## Licence

MIT, see [LICENSE](LICENSE). Made by [Kuberdon](https://kuberdon.eu) in Leuven, Belgium.
