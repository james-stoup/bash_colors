#!/usr/bin/env bash

###########################################################################################################
#                                               USAGE
###########################################################################################################
# 
#  In the terminal, run this script JUST LIKE THIS:
#
#    . ./bash_colorizer.sh
#
#  No, that wasn't a typo. You need the extra dot. If you
#  don't put it in, nothing will happen and you will feel
#  stupid and probably blame me and my sweet script.
#
#
#  
#
#  If you want to modify the script and make your own PS1 prompt, then go to the "Custom Prompts"
#  section of this script and define a variable in that section. Remember that the variable name
#  must end with "_PS1". Use the predefined color variables to build out your PS1 prompt. Then 
#  run the script to see your new prompt in the list.
#






###########################################################################################################
#                                           NOTES ON BASH COLORS                 
###########################################################################################################
#
#
#
#  Bash color schemes have the following components
#     - opening bracket               (let's get this party started)
#     - terminal color designator     (tell the terminal we are about to be fabulous
#     - optional attribute            (bold, inverted, etc)
#     - FG or BG color                (fore ground or back ground)
#     - closing bracket               (party's over)
#
#  So in practice it looks like this:
#     - \[
#     - \e[                           (you can also use \033[ if you want, same thing)
#     - 1;                            (0 is default but don't use 0, just leave it out)
#     - 31m                           (can only set the font or the background at one time)
#     - \]
#
#  Now, putting it all together we have:
#    \[\e[1;31m\]   <---- This changes the font to BOLD RED
#    \[\e[106m\]    <---- This changes the background to LIGHT CYAN
#
#  To prevent the colors from bleeding over into what we type on the terminal it is a good
#  idea to tell bash to stop at the end of our custom code. To do that, end with this command:
#
#    \[\e[00m\]
#
#
#  So that is cool...but what do I do with it?
#  I'm glad you asked. Let's change the PS1 value to reflect some of the cool colors
#  we can now do.
#
#
#  TYPE THIS INTO YOUR TERMINAL:
#    export PS1="\[\e[1;31m\]\[\e[47m\]\u\h\[\e[00m\]\n  \[\e[40m\]\[\e[97m\][\w]\[\e[00m\]$ "
#
#  BAM! Things just got sexy! But maybe you are wondering how we did that? Let's break it down.
# 
#  Hopefully you know about export variables, so I'll just skip to the command and show you what
#  each piece does.
#
#    \[\e[1;31m\]    \[\e[47m\]        \u            \h           $                  \[\e[00m\]"
#    <bold red FG>   <light gray BG>   <user name>   <hostname>   <final character>  <stop formatting>
#
#
#  TEXT FORMATTING KEYS
#    BOLD =1
#    DIM = 2
#    UNDERLINED = 4
#    INVERT = 7

#  COLORS
#          Black   Red    Green   Yellow   Blue   Purple   Cyan   White
#    FG    30      31     32      33       34     35       36     37  
#    BG    40      41     42      43       44     45       46     47  
#
###########################################################################################################






#####################################################################
# TEXT COLORS
#####################################################################
# BLACK
BLACK_FG="\[\e[30m\]"
BLACK_BOLD_FG="\[\e[1;30m\]"
BLACK_DIM_FG="\[\e[2;30m\]"
BLACK_UL_FG="\[\e[4;30m\]"
BLACK_INVERT_FG="\[\e[7;30m\]"

# WHITE
WHITE_FG="\[\e[97m\]"
WHITE_BOLD_FG="\[\e[1;97m\]"
WHITE_DIM_FG="\[\e[2;97m\]"
WHITE_UL_FG="\[\e[4;97m\]"
WHITE_INVERT_FG="\[\e[7;97m\]"

# GRAYS
LIGHT_GRAY_FG="\[\e[37m\]"
LIGHT_GRAY_BOLD_FG="\[\e[1;37m\]"
LIGHT_GRAY_DIM_FG="\[\e[2;37m\]"
LIGHT_GRAY_UL_FG="\[\e[4;37m\]"
LIGHT_GRAY_INVERT_FG="\[\e[7;37m\]"
DARK_GRAY_FG="\[\e[90m\]"
DARK_GRAY_BOLD_FG="\[\e[1;90m\]"
DARK_GRAY_DIM_FG="\[\e[2;90m\]"
DARK_GRAY_UL_FG="\[\e[4;90m\]"
DARK_GRAY_INVERT_FG="\[\e[7;90m\]"

# REDS
RED_FG="\[\e[31m\]"
RED_BOLD_FG="\[\e[1;31m\]"
RED_DIM_FG="\[\e[2;31m\]"
RED_UL_FG="\[\e[4;31m\]"
RED_INVERT_FG="\[\e[7;31m\]"
LIGHT_RED_FG="\[\e[91m\]"
LIGHT_RED_BOLD_FG="\[\e[1;91m\]"
LIGHT_RED_DIM_FG="\[\e[2;91m\]"
LIGHT_RED_UL_FG="\[\e[4;91m\]"
LIGHT_RED_INVERT_FG="\[\e[7;91m\]"

# GREENS
GREEN_FG="\[\e[32m\]"
GREEN_BOLD_FG="\[\e[1;32m\]"
GREEN_DIM_FG="\[\e[2;32m\]"
GREEN_UL_FG="\[\e[4;32m\]"
GREEN_INVERT_FG="\[\e[7;32m\]"
LIGHT_GREEN_FG="\[\e[92m\]"
LIGHT_GREEN_BOLD_FG="\[\e[1;92m\]"
LIGHT_GREEN_DIM_FG="\[\e[2;92m\]"
LIGHT_GREEN_UL_FG="\[\e[4;92m\]"
LIGHT_GREEN_INVERT_FG="\[\e[7;92m\]"

# YELLOWS
YELLOW_FG="\[\e[33m\]"
YELLOW_BOLD_FG="\[\e[1;33m\]"
YELLOW_DIM_FG="\[\e[2;33m\]"
YELLOW_UL_FG="\[\e[4;33m\]"
YELLOW_INVERT_FG="\[\e[7;33m\]"
LIGHT_YELLOW_FG="\[\e[93m\]"
LIGHT_YELLOW_BOLD_FG="\[\e[1;93m\]"
LIGHT_YELLOW_DIM_FG="\[\e[2;93m\]"
LIGHT_YELLOW_UL_FG="\[\e[4;93m\]"
LIGHT_YELLOW_INVERT_FG="\[\e[7;93m\]"

# BLUES
BLUE_FG="\[\e[34m\]"
BLUE_BOLD_FG="\[\e[1;34m\]"
BLUE_DIM_FG="\[\e[2;34m\]"
BLUE_UL_FG="\[\e[4;34m\]"
BLUE_INVERT_FG="\[\e[7;34m\]"
LIGHT_BLUE_FG="\[\e[94m\]"
LIGHT_BLUE_BOLD_FG="\[\e[1;94m\]"
LIGHT_BLUE_DIM_FG="\[\e[2;94m\]"
LIGHT_BLUE_UL_FG="\[\e[4;94m\]"
LIGHT_BLUE_INVERT_FG="\[\e[7;94m\]"

# PURPLES
PURPLE_FG="\[\e[35m\]"
PURPLE_BOLD_FG="\[\e[1;35m\]"
PURPLE_DIM_FG="\[\e[2;35m\]"
PURPLE_UL_FG="\[\e[4;35m\]"
PURPLE_INVERT_FG="\[\e[7;35m\]"
LIGHT_PURPLE_FG="\[\e[95m\]"
LIGHT_PURPLE_BOLD_FG="\[\e[1;95m\]"
LIGHT_PURPLE_DIM_FG="\[\e[2;95m\]"
LIGHT_PURPLE_UL_FG="\[\e[4;95m\]"
LIGHT_PURPLE_INVERT_FG="\[\e[7;95m\]"

# CYANS
CYAN_FG="\[\e[36m\]"
CYAN_BOLD_FG="\[\e[1;36m\]"
CYAN_DIM_FG="\[\e[2;36m\]"
CYAN_UL_FG="\[\e[4;36m\]"
CYAN_INVERT_FG="\[\e[7;36m\]"
LIGHT_CYAN_FG="\[\e[96m\]"
LIGHT_CYAN_BOLD_FG="\[\e[1;96m\]"
LIGHT_CYAN_DIM_FG="\[\e[2;96m\]"
LIGHT_CYAN_UL_FG="\[\e[4;96m\]"
LIGHT_CYAN_INVERT_FG="\[\e[7;96m\]"


#####################################################################
# BACKGROUND COLORS
#####################################################################
# BLACK & WHITE
BLACK_BG="\[\e[40m\]"
WHITE_BG="\[\e[107m\]"

# GRAYS
LIGHT_GRAY_BG="\[\e[47m\]"
DARK_GRAY_BG="\[\e[100m\]"

# REDS
RED_BG="\[\e[41m\]"
LIGHT_RED_BG="\[\e[101m\]"

# GREENS
GREEN_BG="\[\e[42m\]"
LIGHT_GREEN_BG="\[\e[102m\]"

# YELLOWS
YELLOW_BG="\[\e[43m\]"
LIGHT_YELLOW_BG="\[\e[103m\]"

# BLUES
BLUE_BG="\[\e[44m\]"
LIGHT_BLUE_BG="\[\e[104m\]"

# PURPLES
PURPLE_BG="\[\e[45m\]"
LIGHT_PURPLE_BG="\[\e[105m\]"

# CYANS
CYAN_BG="\[\e[46m\]"
LIGHT_CYAN_BG="\[\e[106m\]"

# Clear formatting
END_LINE='\[\e[00m\]'
STOP_COLORS="\e[m"




#####################################################################
# Custom Prompts
#####################################################################
BLACK_WHITE_GRAY_PS1="$WHITE_FG$LIGHT_GRAY_BG\u@\h$END_LINE\n  $BLACK_BG$WHITE_FG[\w]$END_LINE$ "
RED_COMMANDO_PS1="$RED_FG$WHITE_BG\u (Shell v\v)$END_LINE\n  $BLACK_BG$WHITE_FG[\w]$END_LINE$ "
EMONK_PS1="$PURPLE_BOLD_FG<\t>$STOP_COLORS $CYAN_BOLD_FG\u$STOP_COLORS@$CYAN_FG\h$STOP_COLORS $END_LINE$GREEN_BOLD_FG[\W]> $END_LINE"
LOTS_O_INFO_PS1="\n$PURPLE_FG\$(/bin/date)\n$GREEN_FG\w\n$RED_BOLD_FG\u@\h: $BLUE_BOLD_FG\$(/usr/bin/tty | /bin/sed -e 's:/dev/::'): $CYAN_BOLD_FG\$(/bin/ls -1 | /usr/bin/wc -l | /bin/sed 's: ::g') files $YELLOW_BOLD_FG\$(/bin/ls -lah | /bin/grep -m 1 total | /bin/sed 's/total //')b$END_LINE -> $END_LINE"
CLEAN_COLORS_PS1="$PURPLE_FG\t\[$STOP_COLORS\]-$CYAN_FG\u\[$STOP_COLORS\]@$GREEN_FG\h:$BLUE_BOLD_FG\w\[$STOP_COLORS\]\$ "
FULL_PATH_PS1="$GREEN_FG[\w]$END_LINE\n$LIGHT_CYAN_BG    $END_LINE $CYAN_BOLD_FG\u $LIGHT_CYAN_BG    $END_LINE > $END_LINE"
JOBS_PS1="$BLACK_BG$GREEN_BOLD_FG\u@\H:$LIGHT_GRAY_BOLD_FG\w$STOP_COLORS\n$PURPLE_BOLD_FGhist: $RED_BOLD_FGjobs:\j $STOP_COLORS "
CYRANIX_PS1="$RED_FG[\t] $END_LINE$CYAN_FG\u$END_LINE$LIGHT_GRAY_BOLD_FG$END_LINE$GREEN_FG@\h$LIGHT_GRAY_BOLD_FG:$STOP_COLORS$LIGHT_GRAY_FG\w$END_LINE$LIGHT_GRAY_BOLD_FG\$$END_LINE$LIGHT_GRAY_FG$END_LINE "
APACHE_PS1="\n$BLACK_BOLD_FG[$$:$PPID - \j:\!$BLACK_BOLD_FG]$CYAN_FG \T $BLACK_BOLD_FG[$BLUE_BOLD_FG\u@\H$BLACK_BOLD_FG:$LIGHT_GRAY_FG${SSH_TTY:-o} $RED_FG+${SHLVL}$BLACK_BOLD_FG] $LIGHT_GRAY_BOLD_FG\w$LIGHT_GRAY_FG$END_LINE \n$END_LINE$ "
RETURN_VALUE_REDUX_PS1="$DARK_GRAY_BG$WHITE_FG[\d | \T -> \w ...\$?]$END_LINE\n# $END_LINE"
MURICA_PS1="$BLUE_BG$WHITE_FG[\@] - \u$END_LINE$RED_FG@\h$ $END_LINE"
FROG_PS1="$GREEN_FG\u@\h:$YELLOW_FG[\w$GREEN_FG$END_LINE]$ "
BREEZY_PS1="$LIGHT_GRAY_BG$GREEN_BOLD_FG(\h - \t)$STOP_COLORS\n  $BLUE_BOLD_FG[\w]$ $END_LINE"
DARKNESS_PS1="$BLUE_BG$RED_FG \@ $RED_BG$BLUE_BOLD_FG \u $STOP_COLORS\n$WHITE_FG\w -> $END_LINE"
DARK_ELVES_PS1="$YELLOW_BOLD_FG[\u] $LIGHT_PURPLE_UL_FG\w$STOP_COLORS $CYAN_BOLD_FG(\$(/bin/ls -1 | /usr/bin/wc -l | /bin/sed 's: ::g') files \$(/bin/ls -lah | /bin/grep -m 1 total | /bin/sed 's/total //')b)$END_LINE -> "
DARK_DESCENT_PS1="$LIGHT_RED_FG\u$STOP_COLORS\n  $LIGHT_BLUE_FG\d, \@$STOP_COLORS\n    $LIGHT_GREEN_FG\w$STOP_COLORS $ $END_LINE"
BLUE_SKY_PS1="$BLUE_FG$WHITE_BG \u | \t | \h $STOP_COLORS\n$LIGHT_PURPLE_FG[ \w ]$END_LINE > "
SYDNEY_PS1="$WHITE_FG($RED_FG\u@\h - \t$WHITE_FG)$END_LINE\n  $CYAN_BOLD_FG$(/bin/ls -1 | /usr/bin/wc -l | /bin/sed 's: ::g') files$END_LINE $WHITE_FG[$BLUE_FG\w$WHITE_FG]$ "

#####################################################################
# Main function
#####################################################################
PS1_ORIG=`echo $PS1`
PS1_PROMPTS=''
script_name=`basename "$BASH_SOURCE"`
SELECTION=0

Print_Choices() {
    echo ""
    echo "=== AVAILABLE PROMPTS ==="
    search_str_1="_PS"
    search_str_2="1="
    search_str="$search_str_1$search_str_2"
    PS1_PROMPTS_STR=`grep $search_str $script_name | cut -d "=" -f1 | sort`
    PS1_PROMPTS=($PS1_PROMPTS_STR)
    
    for choice in "${!PS1_PROMPTS[@]}"
    do
	prompt_name_long="${PS1_PROMPTS[$choice]}"
	prompt_name=${prompt_name_long::${#prompt_name_long}-4}

	if (( $choice < 9 )) ; then
	    echo "   $(($choice+1)) : ${prompt_name//_/ }"
	else
	    echo "  $(($choice+1)) : ${prompt_name//_/ }"
	fi
    done

    echo ""
}


# Give them some options and then enter a loop until they pick one
Print_Choices

while true
do
    list_max=${#PS1_PROMPTS[@]}
    read -p "Enter selection [1-$list_max]: " selection
    echo ""
    
    regex='^[0-9]+$'
    if ! [[ $selection =~ $regex ]] ; then
	echo "ERROR: You can only enter a number!" >&2;
	echo ""
	Print_Choices
    else
	if (( $selection > $list_max )) || (( $selection < 1 )) ; then
	    echo "INVALID CHOICE, please chose a number between [1-$list_max]"
	    echo ""
	    Print_Choices
	else
	    SELECTION=$(($selection-1))
	    break
	fi
    fi
done


# Set the new value to be the PS1
PS1_CHOICE=${PS1_PROMPTS[$SELECTION]}
PS1=${!PS1_CHOICE}


echo ""
echo "To make this permanent, put this in your ~/.bashrc:"
echo ""
echo "  export PS1=\"${!PS1_CHOICE}\""
echo ""
