#!/usr/bin/env bash

# Only other thing I think might be needed is to take the read search term $3 and not have to have it exact match (maybe ask for input)

magenta=$'\e[35m'
red=$'\e[31m'
green=$'\e[32m'
yellow=$'\e[33m'
cyan=$'\e[36m'
reset=$'\e[0m'


if [[ "$2" == "list" && -f "$1" ]] #if second input of command is list plus the file exist (first input)
then # Then we will read in file and just print out all headers 
	exec 3<"$1"
	echo ""
	printf "${red}You are reviewing %s$reset\n" "${1}" # instead of echo -e 
	echo ""
	while IFS= read -r -u 3 line || [[ -n "$line" ]]; do
		case $line in
			\#*)
				read -rp "${green}Headers: $line${reset}"
			        ;;
              *);;
		esac
	done
elif [[ "$2" == "read" && -f "$1" ]] # if second input is read and file exist
then # Then read in file and use awk to print from 3 input (header name) to next header
	exec 3<"$1"
	echo ""
    printf "${red}You are reviewing %s$reset\n" "${1}" # instead of echo -e 
	echo ""
	awk '/^#.*/{f=0} /^#.*'"$3"'/{f=1} f' "$1" # awk begin and end check starts with the $3 with # in front to the next 

elif [ -f "$1" ] # lastly if no other input and the file exist 
then
# read the file line by line with enter 
       exec 3<"$1"
       echo ""
       printf "${red}You are reviewing %s$reset\n" "${1}" # instead of echo -e 
       echo ""
       while IFS= read -r -u 3 line || [[ -n "$line" ]]; do
                case $line in
		       \#*)
		               read -rp "${green}> $line ${reset} "
			       ;;

		       \**)
			       read -rp "${cyan}>> $line${reset} "
			       ;;
		       "    *"*) # One indent *
			       read -rp "${cyan}>>> $line${reset} "
			       ;;
               "        *"*) #two level indent *
                   read -rp "${cyan}>>>> $line${reset} "
                   ;;
               "            *"*) # * Third level indent this is the max (not sure if supported everywhere)
                   read -rp "${cyan}>>>>> $line${reset} "
                   ;;
               "            1"*)
                   read -rp "${yellow}>>>># $line${reset} "
                   ;;
		       1*)
			       read -rp "${yellow}># $line${reset} "
			       ;;
		       "    1"*)
			       read -rp "${yellow}>># $line${reset} "
			       ;;
               "        1"*)
                   read -rp "${yellow}>>># $line${reset} "
                   ;;
		       -*)
			       read -rp "--- "
			       ;;
		       '    ```'*)
			       read -rp "${magenta}Code Block${reset} "
			       ;;
		       '    '**) #adding to read the code block must be at least 4 spaces (prints anything indented/4 spaces)
			       read -rp "${green}Code> $line${reset} "
			       ;;
		       ''*) #This pattern always overrides a later one on line 73
			       read -rp "~~~ $line" #putting the line just in case something other than blank like is here
			       ;;
		       *) #Essentially this should next execute 
			       read -rp "*Error Case*: $line"
			       ;;
	        esac
       done 
else # else the file does not exist and other inputs are not included 
	echo "File does not exist - exit"
 fi

