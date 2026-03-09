# Log Archive Tool

A small CLI tool that compresses your logs and stores them with a timestamp. Useful for keeping your server clean without losing old logs forever.

## What it does

- Takes a log directory as an argument
- Compresses everything into a `.tar.gz` file
- Saves it with the date and time in the filename so you always know when it was archived
- Keeps a running history of all archives in a log file

## How to run it

```bash
chmod +x log-archive.sh
./log-archive.sh /var/log
```

This will create a folder called `logs_archive/` with your compressed logs inside, named something like:

```
logs_archive_20240816_100648.tar.gz
```

And a `archive_log.txt` file that tracks every archive you've ever made.

## Requirements

Bash and `tar` — both come standard on any Unix/Linux system.

## Why I built this

Log files pile up fast and eat disk space. Instead of deleting them and losing everything, this script compresses and archives them so they're out of the way but still there if you ever need them.