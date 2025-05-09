#!/bin/bash
dnsmasq --no-daemon &
nginx -g "daemon off;"
