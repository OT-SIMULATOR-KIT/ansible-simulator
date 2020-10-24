function installOperation() {
    SERVER_ALIAS=$1
    INSTRUCTION=$2

    SOFTWARE=`getValueForColumn "$INSTRUCTION" 3`
    echo "Installing software ${SOFTWARE} on ${SERVER_ALIAS}"
    BASH_INSTRUCTION="apt-get -y install ${SOFTWARE}"

    executeInstruction ${SERVER_ALIAS} "${BASH_INSTRUCTION}"

    echo "Install operation done"
}

function uninstallOperation() {
    SERVER_ALIAS=$1
    INSTRUCTION=$2

    SOFTWARE=`getValueForColumn "$INSTRUCTION" 3`
    echo "Un-Installing software ${SOFTWARE} on ${SERVER_ALIAS}"
    BASH_INSTRUCTION="apt-get -y  purge --auto-remove ${SOFTWARE}"

    executeInstruction ${SERVER_ALIAS} "${BASH_INSTRUCTION}"

    echo "Install operation done"
}