#!/usr/bin/env bash


### USAGE ###
#  In the terminal, run this script JUST LIKE THIS:
#
#    . ./bash_colorizer.sh
#
#  No, that wasn't a typo. You need the extra dot. If you
#  don't put it in, nothing will happen and you will feel
#  stupid and probably blame me and my sweet script.





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




####################
# TEXT COLOR
####################
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


####################
# BACKGROUND COLORS
####################
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


PS1_CHOICE="$RED_BOLD_FG$LIGHT_GRAY_BG\u \h$END_LINE\n  $BLACK_BG$WHITE_FG[\w]$END_LINE$ "


echo "export PS1=$PS1_CHOICE"
PS1=$PS1_CHOICE




