#!/bin/bash

set -e

echo '>>> Enable PGPOOL...'
systemctl enable pgpool.service

echo '>>> Start PGPOOL...'
systemctl start pgpool.service