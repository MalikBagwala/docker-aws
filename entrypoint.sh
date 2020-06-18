#!/bin/sh

set -e

# Only replace the three variables and keep $host and other variables
$(aws ecr get-login --no-include-email)