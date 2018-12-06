# bash_colorizer

A simple way to colorize, organize, and otherwise spice up your bash prompt


## What is this?
This tool helps you easily redesign your bash PS1 variable to make your terminal look nicer. This tool includes prebuilt prompts that you can use or you can build your own.

## How do I use this?
Simply run the script like so:

```
# MAKE SURE YOU INCLUDE THE FIRST DOT! 
$ . ./bash_colorizer.sh
```

The tool will then give you a list of all the prebuild prompts it knows about. Select one that you want and it will automatically get set as the prompt for that terminal session. You can keep running the script over and over again till you find a prompt that you like. If you decide you want to make your own prompt with your own combination of colors and printed values, then simply open the script, go down to the 'Custom Prompts' section and add your own. All of the color values are assigned to variables which makes it easy to customize your prompt.

For example, if you wanted only the user and host name in blue text on a gray background, you would specify it like so:

```
MY_PROMPT="$BLUE_FG$LIGHT_GRAY_BG(\u@\h)$ "

```

Then all you need to do is save the script, run it again, and select your prompt. It will set it for the session as well as print out the value for your new PS1. That way, if you want to keep this new prompt, you can simply add it to your ~/.bashrc file, source it, and you are good to go.

## Benefits of this tool

 * single file tool
 * no external dependencies
 * compatible with bash 3
 * generates the raw PS1 value (it doesn't depend on this script for future use)

Almost everyone in the commercial world is going to have access to a wide variety of more powerful tooling. You are no doubt running the latest version of Python, git, and bash and the world is your oyster. But not all of us are so lucky. For those of us working on older systems in more restrictive environments, a lot of the features of newer tools are unavaiable. So, if you are reading this and can't understand why anyone would still be using Python 2.7, this probably isn't for you. For those of you who share my pain, this might make your lives slightly easier.




