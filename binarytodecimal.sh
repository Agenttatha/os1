#!/bin/bash

# Take input as binary number
echo “Enter Binary Number: “
read n

# Validate input
if [[ ! “$n” =~ ^[01]+$ ]]; then
echo “Error: Invalid binary number.”
exit 1
fi

# Initialize variables
i=0
num=0

# Convert binary to decimal
while [ $n -ne 0 ]; do
digit=$((n % 10))
num=$((num + digit * 2**i))
n=$((n / 10))
let “i++”
done

# Print the result
echo “Resultant Decimal Number: $num”
