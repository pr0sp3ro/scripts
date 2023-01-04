#!/usr/bin/env bash

isinstalled router.py || exit

while true
do
    lvl="$(router.py)"
    [ "$lvl" -le 20 ] && notify-send -u critical "Low router battery! $lvl%."
    [ "$lvl" -gt 95 ] && notify-send "Router battery level is at $lvl%." && sleep 10m
    sleep 5m
done
