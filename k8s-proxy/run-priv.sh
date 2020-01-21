#!/usr/bin/env sh
set -e
/usr/sbin/sshd -e
exec env PYTHONPATH=/usr/src/app twistd -l=- --pidfile= -n -y ./forwarder.py 2>&1 >/dev/null