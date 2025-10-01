#!/bin/bash
set -e

# Initialize storage only if not already done
if [ ! -f /opt/cronicle/conf/.storage_initialized ]; then
    echo "Running Cronicle setup..."
    /opt/cronicle/bin/control.sh setup
    touch /opt/cronicle/conf/.storage_initialized
fi

# Start Cronicle manager
exec /opt/cronicle/bin/control.sh start
