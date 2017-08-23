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
export FUNCTIONS_DIR="${ROOTDIR}/functions"
. ${FUNCTIONS_DIR}/filezilla.sh
. ${FUNCTIONS_DIR}/first-install.sh

filezilla

<<<<<<< HEAD
=======
export CONF_DIR="${ROOTDIR}/conf"
export FUNCTIONS_DIR="${ROOTDIR}/functions"
export TOOLS_DIR="${ROOTDIR}/tools"

. ${CONF_DIR}/global
. ${CONF_DIR}/core

# Import functions in specified order.
. ${FUNCTIONS_DIR}/first_install.sh

cat <<EOF

********************************************************************
* Start  Configurations
********************************************************************
EOF


firstInstall

>>>>>>> f63e38b5cd5b152b67d1acec96dd4d3e1ed13c08
