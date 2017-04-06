# touchmed
Hacky solution to get an OSX notification when a Yubikey wants to be touched

# Installation
- Edit socket path in `scdaemon.conf`

- Add `scdaemon.conf` to `~/.gnupg/`

```
cp scdaemon.conf` `~/.gnupg/
```

- Restart gpg-agent

```
killall gpg-agent
launchctl start org.gpgtools.macgpg2.fix
```

- Edit socket path in `changemed.sh`

- Install `changemed.sh`

```
cp changemed.sh ~/.gnupg/
```

- Edit socket and script paths in `com.user.touchmed.plist`

- Install launchd agent

```
cp com.user.touchmed.plist ~/Library/LaunchAgents/
```

- Load agent

```
launchctl load ~/Library/LaunchAgents/com.user.touchmed.plist
```

- Done
