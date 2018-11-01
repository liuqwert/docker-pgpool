#!/bin/bash

set -e

echo '>>> Enable PGPOOL...'
RUN systemctl enable pgpool.service

echo '>>> Start PGPOOL...'
RUN systemctl start pgpool.service