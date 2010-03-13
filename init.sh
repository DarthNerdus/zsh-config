function resolve-symlink() {
  local result=`readlink $1`

  if [ -z $result ]; then
    echo $1
  else
    if [[ $result = /* ]]; then
      $0 $result
    else
      $0 `dirname $1`/$result
    fi
  fi
}

function expand-path() {
  cd -qP $1
  pwd
  cd -q - > /dev/null
}

export ZSH_CONFIG_ROOT=$(expand-path $(dirname $(resolve-symlink $0)))
export ZSH_CONFIG_PLATFORM=${$(uname -s):l}

fpath=( $ZSH_CONFIG_ROOT/functions $fpath )
autoload init-env init-rc

case `basename $0` in
"env")
  init-env
;;
"rc")
  init-rc
;;
*)
  init-env
  init-rc
;;
esac
