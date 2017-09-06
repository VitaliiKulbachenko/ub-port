#!/usr/bin/env bash

#------------------------------
# Define some global variables.
# ------------------------------
tmprootdir="$(dirname $0)"
echo ${tmprootdir} | grep '^/' >/dev/null 2>&1
if [ X"$?" == X"0" ]; then
  export ROOTDIR="${tmprootdir}"
else
  export ROOTDIR="$(pwd)"
fi

cd ${ROOTDIR}
export CONF_DIR="${ROOTDIR}/conf"
export FUNCTIONS_DIR="${ROOTDIR}/functions"
export TOOLS_DIR="${ROOTDIR}/tools"


# Import functions in specified order.

. ${CONF_DIR}/core

. ${FUNCTIONS_DIR}/base.sh
. ${FUNCTIONS_DIR}/chrome.sh
. ${FUNCTIONS_DIR}/docker.sh
. ${FUNCTIONS_DIR}/filezilla.sh
. ${FUNCTIONS_DIR}/indicator_ip.sh
. ${FUNCTIONS_DIR}/php_shtorm.sh
. ${FUNCTIONS_DIR}/realvnc_server.sh
. ${FUNCTIONS_DIR}/sublime_text3.sh
. ${FUNCTIONS_DIR}/teamviewer.sh
. ${FUNCTIONS_DIR}/telegram.sh
. ${FUNCTIONS_DIR}/vagrant.sh
. ${FUNCTIONS_DIR}/viber.sh
. ${FUNCTIONS_DIR}/virtualbox.sh
. ${FUNCTIONS_DIR}/realvnc_viewer.sh
. ${FUNCTIONS_DIR}/wine.sh
. ${FUNCTIONS_DIR}/winetricks.sh
. ${FUNCTIONS_DIR}/winusb.sh

clear
cat <<EOF

********************************************************************
* Start  Configurations
********************************************************************
EOF

# Function user_setup
user_setup () {

    base
    clear

if ask_confirm  " Install :=> Indicator Ip "
    then
    indicator_ip
    clear
fi

if ask_confirm  " Install :=> Realvnc Server "
    then
    realvnc_server
    clear
fi

if ask_confirm  " Install :=> Teamviewer  "
    then
    teamviewer
    clear
fi

if ask_confirm  " Install :=> Telegram  "
    then
    telegram
    clear
fi

if ask_confirm  " Install :=> Viber  "
    then
    viber
    clear
fi

if ask_confirm  " Install :=> Wine  "
    then
    wine
    clear
fi

if ask_confirm  " Install :=> Winetricks  "
    then
    winetricks
    clear
fi
}

# Function dev_setup
dev_setup () {

if ask_confirm  " Install :=> Virtualbox "
    then
    virtualbox
    clear
 fi

if ask_confirm  " Install :=> Vagrant "
    then
    vagrant
    clear
 fi

if ask_confirm  " Install :=> Docker "
    then
    docker
    clear
 fi

if ask_confirm  " Install :=> Php Shtorm "
    then
    php_shtorm
    clear
fi

if ask_confirm  " Install :=> Filezilla "
    then
    filezilla
    clear
fi

if ask_confirm  " Install :=> Sublime Text3 "
    then
    sublime_text3
    clear
fi

if ask_confirm  " Install :=> Realvnc Viewer "
    then
    realvnc_viewer
    clear
fi

if ask_confirm  " Install :=> Winusb "
    then
    winusb
    clear
fi
}

ECHO_QUESTION -n "Select the package to install - select [1-> user or 2-> dev] or write user|dev" "[user|dev] => "
read DISTR

case $DISTR in
     user|1)
          user_setup
          clear
          if ask_confirm  " Install  package :=> dev "
            then
                dev_setup
                clear
          fi
          ;;
     dev|2)
          dev_setup
          clear
          if ask_confirm  " Install  package :=> user "
            then
                user_setup
          fi
          ;;
     *)
          echo "Goodbye my friend."
          ;;
esac


