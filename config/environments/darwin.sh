if [[ $ZSH_CONFIG_PLATFORM = "darwin" ]]; then
  export ARCHFLAGS="-arch x86_64"
  export EDITOR='mate -w'
fi
