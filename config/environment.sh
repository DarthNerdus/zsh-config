autoload import-root
import-root /usr/local
import-root /opt/local
import-root $HOME/local

export LC_ALL=en_US.UTF-8
export TZ=CST6CDT
export PAGER=less
export EDITOR=mate

for filename in $ZSH_CONFIG_ROOT/config/environments/*.sh; do
  source $filename
done