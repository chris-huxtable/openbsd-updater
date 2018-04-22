# In-Place Updater to OpenBSD 6.3
The scripts in the 6.3 subdirectory updates OpenBSD 6.2 to OpenBSD 6.3 in-place. It also attempts to remove leftovers from previous versions.

The `cleanup.sh` can be run on any updated system to remove old libraries. This should only be done **AFTER** you upgrade all ports.

This script is still **work in-progress**. If you use it do so at your own risk. I make no guarantees. This script may break your system.

## Prebuilt
- Copy the 3 scripts in the 6.3 subdirectory [`update.sh`, `after_boot.sh`, `cleanup.sh`] to the target machine.
- Log in as root. Do **NOT** `doas` or `sudo` they may break during the update process. Use `su -`.
- Kill all unnecessary processes.
- sh update.sh
- _machine will reboot and automatically run after\_boot.sh_
- run the cleanup script if desired. This will likely save you some space. `sh cleanup.sh`

## Building `cleanup.sh`
- run `build_list.sh` on a clean, updated, version of the new operating system.
- run `build_list.sh` on a clean, updated, version of the previous operating system.
- place both lists in the `lists` subdirectory.
- if the names are different you will have to change them in the `build_cleanup.rb` script.
- run `build_cleanup.rb` which will compile the `cleanup.sh` script.

## Contributing

1. Fork it ( https://github.com/chris-huxtable/openbsd-updater/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [Chris Huxtable](https://github.com/chris-huxtable) - creator, maintainer
