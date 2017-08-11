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

export FIRST_INSTALL="${ROOTDIR}/first-install"
export FIRST_INSTALL_DEV="${ROOTDIR}/first-install-dev"
#install first install
cd ${FIRST_INSTALL} && bash install.sh
