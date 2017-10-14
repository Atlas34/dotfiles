# vim:ft=zsh ts=2 sw=2 sts=2
# README
#
# In order for this theme to render correctly, you will need a
# [Powerline-patched font](https://github.com/Lokaltog/powerline-fonts).
#
# ------------------------------------------------------------------------------
# CONFIGURATION
# The default configuration, that can be overwrite in your .zshrc file
# ------------------------------------------------------------------------------

VIRTUAL_ENV_DISABLE_PROMPT=true

# PROMPT
if [ ! -n "${BLACKPHOENIX_PROMPT_CHAR+1}" ]; then
  BLACKPHOENIX_PROMPT_CHAR="Σ"
fi
if [ ! -n "${BLACKPHOENIX_PROMPT_ROOT+1}" ]; then
  BLACKPHOENIX_PROMPT_ROOT=true
fi

# STATUS
if [ ! -n "${BLACKPHOENIX_STATUS_SHOW+1}" ]; then
  BLACKPHOENIX_STATUS_SHOW=true
fi
if [ ! -n "${BLACKPHOENIX_STATUS_EXIT_SHOW+1}" ]; then
  BLACKPHOENIX_STATUS_EXIT_SHOW=false
fi
if [ ! -n "${BLACKPHOENIX_STATUS_BG+1}" ]; then
  BLACKPHOENIX_STATUS_BG=green
fi
if [ ! -n "${BLACKPHOENIX_STATUS_ERROR_BG+1}" ]; then
  BLACKPHOENIX_STATUS_ERROR_BG=red
fi
if [ ! -n "${BLACKPHOENIX_STATUS_FG+1}" ]; then
  BLACKPHOENIX_STATUS_FG=white
fi

# TIME
if [ ! -n "${BLACKPHOENIX_TIME_SHOW+1}" ]; then
  BLACKPHOENIX_TIME_SHOW=true
fi
if [ ! -n "${BLACKPHOENIX_TIME_BG+1}" ]; then
  BLACKPHOENIX_TIME_BG=white
fi
if [ ! -n "${BLACKPHOENIX_TIME_FG+1}" ]; then
  BLACKPHOENIX_TIME_FG=black
fi

# VIRTUALENV
if [ ! -n "${BLACKPHOENIX_VIRTUALENV_SHOW+1}" ]; then
  BLACKPHOENIX_VIRTUALENV_SHOW=true
fi
if [ ! -n "${BLACKPHOENIX_VIRTUALENV_BG+1}" ]; then
  BLACKPHOENIX_VIRTUALENV_BG=yellow
fi
if [ ! -n "${BLACKPHOENIX_VIRTUALENV_FG+1}" ]; then
  BLACKPHOENIX_VIRTUALENV_FG=white
fi
if [ ! -n "${BLACKPHOENIX_VIRTUALENV_PREFIX+1}" ]; then
  BLACKPHOENIX_VIRTUALENV_PREFIX=🐍
fi

# NVM
if [ ! -n "${BLACKPHOENIX_NVM_SHOW+1}" ]; then
  BLACKPHOENIX_NVM_SHOW=false
fi
if [ ! -n "${BLACKPHOENIX_NVM_BG+1}" ]; then
  BLACKPHOENIX_NVM_BG=green
fi
if [ ! -n "${BLACKPHOENIX_NVM_FG+1}" ]; then
  BLACKPHOENIX_NVM_FG=white
fi
if [ ! -n "${BLACKPHOENIX_NVM_PREFIX+1}" ]; then
  BLACKPHOENIX_NVM_PREFIX="⬡ "
fi

# RMV
if [ ! -n "${BLACKPHOENIX_RVM_SHOW+1}" ]; then
  BLACKPHOENIX_RVM_SHOW=true
fi
if [ ! -n "${BLACKPHOENIX_RVM_BG+1}" ]; then
  BLACKPHOENIX_RVM_BG=magenta
fi
if [ ! -n "${BLACKPHOENIX_RVM_FG+1}" ]; then
  BLACKPHOENIX_RVM_FG=white
fi
if [ ! -n "${BLACKPHOENIX_RVM_PREFIX+1}" ]; then
  BLACKPHOENIX_RVM_PREFIX=♦️
fi

# DIR
if [ ! -n "${BLACKPHOENIX_DIR_SHOW+1}" ]; then
  BLACKPHOENIX_DIR_SHOW=true
fi
if [ ! -n "${BLACKPHOENIX_DIR_BG+1}" ]; then
  BLACKPHOENIX_DIR_BG=blue
fi
if [ ! -n "${BLACKPHOENIX_DIR_FG+1}" ]; then
  BLACKPHOENIX_DIR_FG=black
fi
if [ ! -n "${BLACKPHOENIX_DIR_CONTEXT_SHOW+1}" ]; then
  BLACKPHOENIX_DIR_CONTEXT_SHOW=false
fi
if [ ! -n "${BLACKPHOENIX_DIR_EXTENDED+1}" ]; then
  BLACKPHOENIX_DIR_EXTENDED=true
fi

# GIT
if [ ! -n "${BLACKPHOENIX_GIT_SHOW+1}" ]; then
  BLACKPHOENIX_GIT_SHOW=true
fi
if [ ! -n "${BLACKPHOENIX_GIT_BG+1}" ]; then
  BLACKPHOENIX_GIT_BG=white
fi
if [ ! -n "${BLACKPHOENIX_GIT_FG+1}" ]; then
  BLACKPHOENIX_GIT_FG=black
fi
if [ ! -n "${BLACKPHOENIX_GIT_EXTENDED+1}" ]; then
  BLACKPHOENIX_GIT_EXTENDED=true
fi

# CONTEXT
if [ ! -n "${BLACKPHOENIX_CONTEXT_SHOW+1}" ]; then
  BLACKPHOENIX_CONTEXT_SHOW=false
fi
if [ ! -n "${BLACKPHOENIX_CONTEXT_BG+1}" ]; then
  BLACKPHOENIX_CONTEXT_BG=black
fi
if [ ! -n "${BLACKPHOENIX_CONTEXT_FG+1}" ]; then
  BLACKPHOENIX_CONTEXT_FG=default
fi

# GIT PROMPT
if [ ! -n "${BLACKPHOENIX_GIT_PREFIX+1}" ]; then
  ZSH_THEME_GIT_PROMPT_PREFIX=" \ue0a0 "
else
  ZSH_THEME_GIT_PROMPT_PREFIX=$BLACKPHOENIX_GIT_PREFIX
fi
if [ ! -n "${BLACKPHOENIX_GIT_SUFFIX+1}" ]; then
  ZSH_THEME_GIT_PROMPT_SUFFIX=""
else
  ZSH_THEME_GIT_PROMPT_SUFFIX=$BLACKPHOENIX_GIT_SUFFIX
fi
if [ ! -n "${BLACKPHOENIX_GIT_DIRTY+1}" ]; then
  ZSH_THEME_GIT_PROMPT_DIRTY=" ✘"
else
  ZSH_THEME_GIT_PROMPT_DIRTY=$BLACKPHOENIX_GIT_DIRTY
fi
if [ ! -n "${BLACKPHOENIX_GIT_CLEAN+1}" ]; then
  ZSH_THEME_GIT_PROMPT_CLEAN=" ✔"
else
  ZSH_THEME_GIT_PROMPT_CLEAN=$BLACKPHOENIX_GIT_CLEAN
fi
if [ ! -n "${BLACKPHOENIX_GIT_ADDED+1}" ]; then
  ZSH_THEME_GIT_PROMPT_ADDED=" %F{green}✚%F{black}"
else
  ZSH_THEME_GIT_PROMPT_ADDED=$BLACKPHOENIX_GIT_ADDED
fi
if [ ! -n "${BLACKPHOENIX_GIT_MODIFIED+1}" ]; then
  ZSH_THEME_GIT_PROMPT_MODIFIED=" %F{blue}✹%F{black}"
else
  ZSH_THEME_GIT_PROMPT_MODIFIED=$BLACKPHOENIX_GIT_MODIFIED
fi
if [ ! -n "${BLACKPHOENIX_GIT_DELETED+1}" ]; then
  ZSH_THEME_GIT_PROMPT_DELETED=" %F{red}✘%F{black}"
else
  ZSH_THEME_GIT_PROMPT_DELETED=$BLACKPHOENIX_GIT_DELETED
fi
if [ ! -n "${BLACKPHOENIX_GIT_UNTRACKED+1}" ]; then
  ZSH_THEME_GIT_PROMPT_UNTRACKED=" ?"
else
  ZSH_THEME_GIT_PROMPT_UNTRACKED=$BLACKPHOENIX_GIT_UNTRACKED
fi
if [ ! -n "${BLACKPHOENIX_GIT_RENAMED+1}" ]; then
  ZSH_THEME_GIT_PROMPT_RENAMED=" ➜"
else
  ZSH_THEME_GIT_PROMPT_RENAMED=$BLACKPHOENIX_GIT_RENAMED
fi
if [ ! -n "${BLACKPHOENIX_GIT_UNMERGED+1}" ]; then
  ZSH_THEME_GIT_PROMPT_UNMERGED=" ═"
else
  ZSH_THEME_GIT_PROMPT_UNMERGED=$BLACKPHOENIX_GIT_UNMERGED
fi
if [ ! -n "${BLACKPHOENIX_GIT_AHEAD+1}" ]; then
  ZSH_THEME_GIT_PROMPT_AHEAD=" ⬆"
else
  ZSH_THEME_GIT_PROMPT_AHEAD=$BLACKPHOENIX_GIT_AHEAD
fi
if [ ! -n "${BLACKPHOENIX_GIT_BEHIND+1}" ]; then
  ZSH_THEME_GIT_PROMPT_BEHIND=" ⬇"
else
  ZSH_THEME_GIT_PROMPT_BEHIND=$BLACKPHOENIX_GIT_BEHIND
fi
if [ ! -n "${BLACKPHOENIX_GIT_DIVERGED+1}" ]; then
  ZSH_THEME_GIT_PROMPT_DIVERGED=" ⬍"
else
  ZSH_THEME_GIT_PROMPT_DIVERGED=$BLACKPHOENIX_GIT_PROMPT_DIVERGED
fi

# ------------------------------------------------------------------------------
# SEGMENT DRAWING
# A few functions to make it easy and re-usable to draw segmented prompts
# ------------------------------------------------------------------------------

CURRENT_BG='NONE'
SEGMENT_SEPARATOR=''

# Begin a segment
# Takes two arguments, background and foreground. Both can be omitted,
# rendering default background/foreground.
prompt_segment() {
  local bg fg
  [[ -n $1 ]] && bg="%K{$1}" || bg="%k"
  [[ -n $2 ]] && fg="%F{$2}" || fg="%f"
  if [[ $CURRENT_BG != 'NONE' && $1 != $CURRENT_BG ]]; then
    echo -n " %{$bg%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR%{$fg%} "
  else
    echo -n "%{$bg%}%{$fg%} "
  fi
  CURRENT_BG=$1
  [[ -n $3 ]] && echo -n $3
}

# End the prompt, closing any open segments
prompt_end() {
  if [[ -n $CURRENT_BG ]]; then
    echo -n " %{%k%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR"
  else
    echo -n "%{%k%}"
  fi
  echo -n "%{%f%}"
  CURRENT_BG=''
}

# ------------------------------------------------------------------------------
# PROMPT COMPONENTS
# Each component will draw itself, and hide itself if no information needs
# to be shown
# ------------------------------------------------------------------------------

# Context: user@hostname (who am I and where am I)
context() {
  local user="$(whoami)"
  [[ "$user" != "$BLACKPHOENIX_CONTEXT_DEFAULT_USER" || -n "$BLACKPHOENIX_IS_SSH_CLIENT" ]] && echo -n "${user}@%m"
}
prompt_context() {
  [[ $BLACKPHOENIX_CONTEXT_SHOW == false ]] && return

  local _context="$(context)"
  [[ -n "$_context" ]] && prompt_segment $BLACKPHOENIX_CONTEXT_BG $BLACKPHOENIX_CONTEXT_FG "$_context"
}

# Git
prompt_git() {
  if [[ $BLACKPHOENIX_GIT_SHOW == false ]] then
    return
  fi

  local ref dirty mode repo_path
  repo_path=$(git rev-parse --git-dir 2>/dev/null)

  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
		dirty=$(parse_git_dirty)


		if [[ $dirty == $ZSH_THEME_GIT_PROMPT_DIRTY ]]; then
      prompt_segment yellow black
			ZSH_THEME_GIT_PROMPT_DIRTY=""
    else
      prompt_segment green black
			ZSH_THEME_GIT_PROMPT_CLEAN=""
    fi

    if [[ $BLACKPHOENIX_GIT_EXTENDED == true ]] then
      echo -n $(git_prompt_info)$(git_prompt_status)
    else
      echo -n $(git_prompt_info)
    fi
  fi
}

# Dir: current working directory
prompt_dir() {
  if [[ $BLACKPHOENIX_DIR_SHOW == false ]] then
    return
  fi

  local dir=''
  local _context="$(context)"
  [[ $BLACKPHOENIX_DIR_CONTEXT_SHOW == true && -n "$_context" ]] && dir="${dir}${_context}:"
  [[ $BLACKPHOENIX_DIR_EXTENDED == true ]] && dir="${dir}%4(c:...:)%3c" || dir="${dir}%1~"
  prompt_segment $BLACKPHOENIX_DIR_BG $BLACKPHOENIX_DIR_FG $dir
}

# RVM: only shows RVM info if on a gemset that is not the default one
prompt_rvm() {
  if [[ $BLACKPHOENIX_RVM_SHOW == false ]] then
    return
  fi

  if which rvm-prompt &> /dev/null; then
    if [[ ! -n $(rvm gemset list | grep "=> (default)") ]]
    then
      prompt_segment $BLACKPHOENIX_RVM_BG $BLACKPHOENIX_RVM_FG $BLACKPHOENIX_RVM_PREFIX"  $(rvm-prompt i v g)"
    fi
  fi
}

# Virtualenv: current working virtualenv
prompt_virtualenv() {
  if [[ $BLACKPHOENIX_VIRTUALENV_SHOW == false ]] then
    return
  fi

  local virtualenv_path="$VIRTUAL_ENV"
  if [[ -n $virtualenv_path && -n $VIRTUAL_ENV_DISABLE_PROMPT ]]; then
    prompt_segment $BLACKPHOENIX_VIRTUALENV_BG $BLACKPHOENIX_VIRTUALENV_FG $BLACKPHOENIX_VIRTUALENV_PREFIX"  $(basename $virtualenv_path)"
  fi
}

# NVM: Node version manager
prompt_nvm() {
  if [[ $BLACKPHOENIX_NVM_SHOW == false ]] then
    return
  fi

  $(type nvm >/dev/null 2>&1) || return

  local nvm_prompt
  nvm_prompt=$(node -v 2>/dev/null)
  [[ "${nvm_prompt}x" == "x" ]] && return
  nvm_prompt=${nvm_prompt:1}
  prompt_segment $BLACKPHOENIX_NVM_BG $BLACKPHOENIX_NVM_FG $BLACKPHOENIX_NVM_PREFIX$nvm_prompt
}

prompt_time() {
  if [[ $BLACKPHOENIX_TIME_SHOW == false ]] then
    return
  fi

  prompt_segment $BLACKPHOENIX_TIME_BG $BLACKPHOENIX_TIME_FG '%D{%H:%M:%S}'
}

# Status:
# - was there an error
# - am I root
# - are there background jobs?
prompt_status() {
  if [[ $BLACKPHOENIX_STATUS_SHOW == false ]] then
    return
  fi

  local symbols
  symbols=()
  [[ $RETVAL -ne 0 && $BLACKPHOENIX_STATUS_EXIT_SHOW != true ]] && symbols+="✘"
  [[ $RETVAL -ne 0 && $BLACKPHOENIX_STATUS_EXIT_SHOW == true ]] && symbols+="✘ $RETVAL"
  [[ $UID -eq 0 ]] && symbols+="%{%F{yellow}%}⚡%f"
  [[ $(jobs -l | wc -l) -gt 0 ]] && symbols+="⚙"

  if [[ -n "$symbols" && $RETVAL -ne 0 ]] then
    prompt_segment $BLACKPHOENIX_STATUS_ERROR_BG $BLACKPHOENIX_STATUS_FG "$symbols"
  elif [[ -n "$symbols" ]] then
    prompt_segment $BLACKPHOENIX_STATUS_BG $BLACKPHOENIX_STATUS_FG "$symbols"
  fi

}

# Prompt Character
prompt_char() {
  local bt_prompt_char

  if [[ ${#BLACKPHOENIX_PROMPT_CHAR} -eq 1 ]] then
    bt_prompt_char="${BLACKPHOENIX_PROMPT_CHAR}"
  fi

  if [[ $BLACKPHOENIX_PROMPT_ROOT == true ]] then
    bt_prompt_char="%(!.%F{red}#.%{$fg_bold[black]%} ${bt_prompt_char} %{$reset_color%})"
  fi

  echo -n $bt_prompt_char
}

# ------------------------------------------------------------------------------
# MAIN
# Entry point
# ------------------------------------------------------------------------------

build_prompt() {
  RETVAL=$?
  prompt_time
  prompt_status
  prompt_rvm
  prompt_virtualenv
  prompt_nvm
  prompt_context
  prompt_dir
  prompt_git
  prompt_end
}

PROMPT='
%{%f%b%k%}$(build_prompt)
%{${fg[black]}%}%{${bg[green]}%}$SEGMENT_SEPARATOR%{${fg[black]}%}%{${bg[green]}%}$(prompt_char)%{${fg[green]}%}%{${bg[default]}%}$SEGMENT_SEPARATOR%{$reset_color%} '

