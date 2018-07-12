#!/usr/bin/env bash
# use interpreter found in $PATH instead of hardcoding it to something like /usr/bin/bash 
# -> gain portability and flexibility. user does have a choice in which bash he's gonna use

set -o errexit	# aka set -e exit on error instead of happily continuing as if nothing did go wrong..
# for those commands allowed to fail use || true (OR)
set -o pipefail	# exit on pipefail and print out the exit status of last failed command
set -o nounset	# aka set -u exit on unset variable
# set -o xtrace	# aka set -x prints out what get's executed e.g. after expansion

# global variables readonly where possible!
readonly MY_GLOBALVAR=""


# use {} and no preceding function keyword. just the function name
# beware you don't take names that exist in bash like test
aFunction() {
  # two whitespaces or 4 or whatever you like. avoid "hard" tabs!
  # all lowercase to avoid crash with ENV variables, also use local whereever possible  
  # local is not usable in global space. so only in functions
  # => guess what: do everything except global configuration of variables in functions
  # Variable expansion
  $(NAME)
  local myvar
  # test variables for being set
  # [[]] instead of [] or test .. as long no there is no need for posix compability
  if [[ "${NAME:-}" = "Kevin" ]]
  fi
  # default values for probably unset variables:
  # if [[ "${NAME:-noname}" = "Kevin" ]]
}

main(){
  # your main script
}




