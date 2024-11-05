#!/bin/bash

# Check the status of the Nginx service

if systemctl is-active nginx; then
    echo "Nginx service is running."
else
    echo "Nginx service is not running. Starting the service..."
    sudo systemctl start nginx

    # Check if the service started successfully
    if systemctl is-active nginx; then
        echo "Nginx service started successfully."
    else
        echo "Failed to start Nginx service."
    fi
fi

