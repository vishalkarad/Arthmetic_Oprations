#!/bin/bash -x

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
