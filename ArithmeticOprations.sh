#!/bin/bash -x

declare -A computeDictionary
printf "**********Arithematic Oprations***********"

printf "Enter a three input "
read firstInput
read secondInput
read thirdInput

#compute addition And  multiplication
compute=$(( $firstInput + ($secondInput*$thirdInput) ))

# Compute multiplication and addition
compute1=$(( ($firstInput*$secondInput) + $thirdInput ))

# Compute Addition and divisin
compute2=$(( $thirdInput + ($firstInput/$secondInput ) ))

# Compute Modulus and Addition
compute3=$(( ($firstInput%$secondInput) + $thirdInput ))

# Add all compute in dictionary
computeDictionary[1]=$compute
computeDictionary[2]=$compute1
computeDictionary[3]=$compute2
computeDictionary[4]=$compute3
