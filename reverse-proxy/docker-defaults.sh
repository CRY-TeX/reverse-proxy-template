#!/usr/bin/env sh
set -eu

# As of version 1.19, the official Nginx Docker image supports templates with
# variable substitution. But that uses `envsubst`, which does not allow for
# defaults for missing variables. Here, first use the regular command shell
# to set the defaults:

# export the DOMAIN_NAME variable from the .env file to be used in the nginx configuration
export DOMAIN_NAME=${DOMAIN_NAME}

# now call the original entrypoint
/docker-entrypoint.sh "$@"

