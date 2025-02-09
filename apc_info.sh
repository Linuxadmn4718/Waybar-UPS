#!/bin/bash

# Function to get UPS information using apcaccess
get_ups_info() {
    apcaccess status
}

# Function to format UPS information for yad
format_ups_info() {
    ups_info=$(get_ups_info)
    yad_info=""
    # Read each line of ups_info and format for yad
    while IFS= read -r line; do
        yad_info="${yad_info}${line}\n"
    done <<< "$ups_info"
    echo -e "$yad_info"
}

# Get formatted UPS information
formatted_info="\n$(format_ups_info)"

# Display formatted UPS information using yad
yad --text-info --title="UPS Information" --width=200 --height=750 --filename=<(echo -e "$formatted_info")