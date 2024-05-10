#!/usr/bin/env bash

# Only other thing I think might be needed is to take the read search term $3 and not have to have it exact match (maybe ask for input)


if [[ "$2" == "list" && -f "$1" ]] #if second input of command is list plus the file exist (first input)
then # Then we will read in file and just print out all headers 
	exec 3<"$1"
	echo ""
	echo "You are reviewing $1"
	echo ""
	while IFS= read -r -u 3 line || [[ -n "$line" ]]; do
		case $line in
			\#*)
				read -p "Headers: $line"
			        ;;
		         *)
				:
				;;
		esac
	done
elif [[ "$2" == "read" && -f "$1" ]] # if second input is read and file exist
then # Then read in file and use awk to print from 3 input (header name) to next header
	exec 3<"$1"
	echo ""
	echo "You are reviewing $1"
	echo ""
	awk '/^#.*/{f=0} /^#.*'$3'/{f=1} f' $1 # awk begin and end check starts with the $3 with # in front to the next #

elif [ -f "$1" ] # lastly if no other input and the file exist 
then
# read the file line by line with enter 
       exec 3<"$1"
       echo ""
       echo "You are reviewing $1"
       echo ""
       while IFS= read -r -u 3 line || [[ -n "$line" ]]; do
                case $line in
		       \#*)
		               read -p "> $line"
			       ;;

		       \**)
			       read -p ">> $line"
			       ;;
		       "    *"*)
			       read -p ">>> $line"
			       ;;
		       1*)
			       read -p "># $line"
			       ;;
		       "    1"*)
			       read -p ">># $line"
			       ;;
		       -*)
			       read -p "---"
			       ;;
		       '    ```'*)
			       read -p "Code Block"
			       ;;
		       '    '**) #adding to read the code block must be at least 4 spaces (prints anything indented/4 spaces)
			       read -p "Code> $line"
			       ;;
		       ''*)
			       read -p "~~~"
			       ;;
		       *)
			       echo "*Error Case*: $line"
			       ;;
	        esac
       done 
else # else the file does not exist and other inputs are not included 
	echo "File does not exist - exit"
 fi

