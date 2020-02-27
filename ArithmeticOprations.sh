#!/bin/bash -x
declare -A computeDictionary
declare -a dictionaryToArray
temporary=0

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

# Convert compute dictionary to array
for (( index=0; index<${#computeDictionary[@]}; index++ ))
do
   dictionaryToArray[$index]=${computeDictionary[$(($index+1))]}
done

# Computation result in the descending order
for (( index=0; index<$(( ${#dictionaryToArray[@]}-1 )); index++ ))
do
	for (( index1=$(( $index+1 )); index1<${#dictionaryToArray[@]}; index1++ ))
   do
		if [[ ${dictionaryToArray[$index]} -lt ${dictionaryToArray[$index1]} ]]
		then
			temporary=${dictionaryToArray[$index]}
			dictionaryToArray[$index]=${dictionaryToArray[$index1]}
			dictionaryToArray[$index1]=$temporary
		fi
	done
done

# Computation result in the Ascending order
for (( index=0; index<$(( ${#dictionaryToArray[@]}-1 )); index++ ))
do
   for (( index1=$(( $index+1 )); index1<${#dictionaryToArray[@]}; index1++ ))
   do
      if [[ ${dictionaryToArray[$index]} -gt ${dictionaryToArray[$index1]} ]]
      then
         temporary=${dictionaryToArray[$index]}
         dictionaryToArray[$index]=${dictionaryToArray[$index1]}
         dictionaryToArray[$index1]=$temporary
      fi
   done
done
#!/bin/bash -x
declare -A computeDictionary
declare -a dictionaryToArray
temporary=0

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

# Convert compute dictionary to array
for (( index=0; index<${#computeDictionary[@]}; index++ ))
do
   dictionaryToArray[$index]=${computeDictionary[$(($index+1))]}
done

# Computation result in the descending order
for (( index=0; index<$(( ${#dictionaryToArray[@]}-1 )); index++ ))
do
	for (( index1=$(( $index+1 )); index1<${#dictionaryToArray[@]}; index1++ ))
   do
		if [[ ${dictionaryToArray[$index]} -lt ${dictionaryToArray[$index1]} ]]
		then
			temporary=${dictionaryToArray[$index]}
			dictionaryToArray[$index]=${dictionaryToArray[$index1]}
			dictionaryToArray[$index1]=$temporary
		fi
	done
done

# Computation result in the Ascending order
for (( index=0; index<$(( ${#dictionaryToArray[@]}-1 )); index++ ))
do
   for (( index1=$(( $index+1 )); index1<${#dictionaryToArray[@]}; index1++ ))
   do
      if [[ ${dictionaryToArray[$index]} -gt ${dictionaryToArray[$index1]} ]]
      then
         temporary=${dictionaryToArray[$index]}
         dictionaryToArray[$index]=${dictionaryToArray[$index1]}
         dictionaryToArray[$index1]=$temporary
      fi
   done
done
