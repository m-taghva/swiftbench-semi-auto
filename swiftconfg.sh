#!/bin/bash

config_file="swift-bench.conf"

# Function to update the value of a parameter in the config file
function update_config_param() {
    param_name=$1
    new_value=$2

    sed -i "s/^$param_name = .*$/$param_name = $new_value/" $config_file
}

# Prompt the user for new values
read -p "Enter the value for concurrency: " concurrency
read -p "Enter the value for object_size: " object_size
read -p "Enter the value for num_containers: " num_containers
read -p "Enter the value for num_objects: " num_objects
read -p "Enter the value for num_gets: " num_gets

# Update the parameters in the config file
update_config_param "concurrency" "$concurrency"
update_config_param "object_size" "$object_size"
update_config_param "num_containers" "$num_containers"
update_config_param "num_objects" "$num_objects"
update_config_param "num_gets" "$num_gets"
