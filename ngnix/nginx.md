# Nginx Log Analyser

A bash script that reads an nginx access log and tells you what's actually going on — who's hitting your server the most, what pages they're going to, and what errors are happening.

## What it shows you

- Top 5 IP addresses by number of requests
- Top 5 most visited paths
- Top 5 response status codes (200s, 404s, 500s etc.)
- Top 5 user agents (browsers, bots, curl etc.)

## How to run it

```bash
chmod +x nginx-log-analyser.sh
./nginx-log-analyser.sh /path/to/access.log
```

Example output:

```
=== Top 5 IP Addresses ===
192.168.1.1 - 4 requests
192.168.1.2 - 2 requests
...

=== Top 5 Requested Paths ===
/home - 5 requests
/login - 2 requests
...
```

## Requirements

Bash and `awk` — both available on any Linux/macOS machine by default.

## Log format

Works with the standard nginx combined log format. If your logs look something like this, you're good:

```
192.168.1.1 - - [16/Aug/2024:10:00:00] "GET /home HTTP/1.1" 200 512 "-" "Mozilla/5.0"
```

## Why I built this

Reading raw nginx logs is painful. This script gives you a quick summary so you can spot traffic spikes, weird IPs, broken pages, or bots without staring at thousands of lines of text.