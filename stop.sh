#!/bin/bash

# Function to stop an EC2 instance
stop_instance() {
    local instance_id=$1

    if [ -z "$instance_id" ]; then
        echo "No instance ID provided."
        exit 1
    fi

    # Stop the EC2 instance
    echo "Stopping EC2 instance with ID: $instance_id"
    aws ec2 stop-instances --instance-ids "$instance_id"

    # Check if the stop command was successful
    if [ $? -eq 0 ]; then
        echo "Instance $instance_id is stopping."
    else
        echo "Failed to stop instance $instance_id."
    fi
}

# Parse input flags
while getopts ":i:" opt; do
    case $opt in
        i)
            instance_id=$OPTARG
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            exit 1
            ;;
        :)
            echo "Option -$OPTARG requires an argument." >&2
            exit 1
            ;;
    esac
done

# Call the function to stop the instance
stop_instance "$instance_id"

