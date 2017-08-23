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

