#!/bin/sh
exec puppet apply --modulepath="$PWD/my/modules" --verbose my/manifests/site.pp "$@"
