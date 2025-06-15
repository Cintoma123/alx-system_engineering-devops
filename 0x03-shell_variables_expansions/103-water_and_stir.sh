#!/bin/bash

# Ensure the required environment variables are set
if [[ -z "$WATER" || -z "$STIR" || -z "$water" || -z "$stir" || -z "$bestchol" ]]; then
    echo "Please set WATER, STIR, water, stir, and bestchol environment variables."
    exit 1
fi

# Convert WATER from base $water to decimal
water_dec=$(( "ibase=$water; $WATER" ))
# Convert STIR from base $stir to decimal
stir_dec=$(( "ibase=$stir; $STIR" ))

# Add the two decimal numbers
sum=$(( water_dec + stir_dec ))

# Convert the sum to base $bestchol and print
echo "obase=$bestchol; $sum" | bc