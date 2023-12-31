# Pastes 1.1.1

> Easily access pastes.dev from the command line

## Installation

If you use an arch-based system, you can install pastes from the AUR.

For other operating systems:
* git clone https://codeberg.org/maxbossing/pastes.git
* cd pastes
* sudo mv pastes /usr/bin/


## Usage 
`pastes [FLAGS] [KEY]`

If nothing is supplied, an $EDITOR session will be opened, the written contents are submitted to pastes.dev and and the URL will be shown.

If the written content is empty, nothing will be submitted

If KEY is supplied, the paste under the key is fetched and opened in $EDITOR.

If "-" is supplied, STDIN will be submitted to pastes.dev, and the URL will be shown.

### Flags
```
   -h --help                display help and exit
   -e --editor [EDITOR]     manually set your editor
   -f --file [FILE]         specify a file to be pasted
   -l --langauge [language] specify the language of the contents
   -v --version             display version and exit
   -s --save                save the paste to the path defined in -f instead
```

## Changelog
### 1.1.0
* pass flag -e/--editor to specify the editor used
* pass flag -f/--file followed by a path to paste a file
* pass flag -l/--language followed by a language, to set the pastes.dev language. defaults to plain if none or a non-existing is supplied
* pass flag -v/--version to display the version
* fix some bugs with whitespace preservation

### 1.1.1
* pass -s/--save flag to save the paste in the file specified by -f/--file

## TODO
- [✗] Support https://pastes.dev/<key> links

## LICENSE
This project is licensed under GPL v2-only
