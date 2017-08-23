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

. ${CONF_DIR}/global
. ${CONF_DIR}/core

# Import functions in specified order.

cat <<EOF

********************************************************************
* Start  Configurations
********************************************************************
EOF

user_config($1)
{

echo "user"

}


dev_config($1 $2)
{

echo "dev"
}


