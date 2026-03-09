# Server Stats

A simple bash script that gives you a quick snapshot of how your server is doing. Nothing fancy, just the stuff you actually need to know.

## What it shows you

- CPU usage
- Memory usage (used vs free + percentage)
- Disk usage (used vs free + percentage)
- Top 5 processes eating up CPU
- Top 5 processes eating up memory

## How to run it

Download the script, then:

```bash
chmod +x server-stats.sh
./server-stats.sh
```

That's it. No dependencies, no setup, just run it.

## Requirements

Any Linux server with bash. Uses standard tools like `top`, `free`, `df`, and `ps` that come pre-installed on basically every Linux distro.

## Why I built this

Sometimes you just want to SSH into a server and quickly figure out what's going on without having to remember a bunch of commands. This script does that for you in one go.