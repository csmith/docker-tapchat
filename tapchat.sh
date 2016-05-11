#!/bin/sh

export HOME=/

if [ ! -f /var/lib/tapchat.pm ]; then 
  expect /tapchat.expect 
fi

tapchat start -f

