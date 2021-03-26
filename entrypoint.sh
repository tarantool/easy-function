#!/usr/bin/env bash

iptables-restore < /tmp/iptables.rules
gosu tarantool cartridge start
