# kmodguard

## The Problem

I've noticed that things might randomly break after doing a kernel update on
Arch Linux. The VPN won't start, or a dongle won't be detected, etc.

This happens because the kernel modules for the _currently running_ version of
the kernel get deleted with each upgrade. As a result drivers won't be able to
load, and the only way to recover is to reboot the system and run the upgraded
kernel.

## The Solution

`kmodguard` is a utility that hooks to `pacman` and backs up the kernel modules
before they get deleted, then places them in the correct path. Unused backups
get deleted at boot using a `systemd` service. This allows for a fully usable
system after a kernel update.

## Setup

_WARNING: This might break your system_

- Clone the repository
- `# make install`
- `# systemctl enable kmodguard-clean.service`
