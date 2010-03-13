if [[ $ZSH_CONFIG_PLATFORM = "darwin" ]]; then
  export ARCHFLAGS="-arch x86_64"
  export EDITOR=mate

  alias mute="osascript -e 'set volume 0'"
fi
