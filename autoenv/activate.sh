#!/usr/bin/env zsh
AUTOENV_AUTH_FILE=~/.autoenv_authorized
if [ -z "$AUTOENV_ENV_FILENAME" ]; then
    AUTOENV_ENV_FILENAME=.env
fi

autoenv_init()
{
		_file="$PWD/$AUTOENV_ENV_FILENAME"
		if [[ -d "${_file}" ]]
      		then
				source $_file/bin/activate
    	fi
}



autoenv_cd()
{
  if builtin cd "$@"
  then
    autoenv_init
    return 0
  else
    return $?
  fi
}

enable_autoenv() {
    cd() {
        autoenv_cd "$@"
    }
    cd .
}

enable_autoenv
