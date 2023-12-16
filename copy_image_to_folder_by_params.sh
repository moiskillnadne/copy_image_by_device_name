#!/bin/bash

# Directory containing the photos
input_directory="/Users/victorryabkov/Movies/Youtube/iphones_comparison/source/camera_test_images/iphone_15_pro_max"

# Directory where you want to copy the photos
output_directory="/Users/victorryabkov/Movies/Youtube/iphones_comparison/source/camera_test_images/iphone_13"

# Device models
model1="iPhone XR"  # Replace with actual model name
# model2="iPhone Model 2"  # Replace with actual model name
# model3="iPhone Model 3"  # Replace with actual model name

# Creating output directory if it doesn't exist
mkdir -p "$output_directory"

# Function to copy photos based on model
copy_photos() {
    model=$1
    find "$input_directory" -type f -exec sh -c '
        for photo; do
            if exiftool -Model -b "$photo" | grep -q "'"$model"'"; then
                cp "$photo" "'"$output_directory"'"
            fi
        done
    ' find-sh {} +
}

# Copy photos for each model
copy_photos "$model1"
# copy_photos "$model2"
# copy_photos "$model3"
