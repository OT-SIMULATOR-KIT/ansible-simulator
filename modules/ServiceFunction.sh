function serviceOperation() {
    SERVER_ALIAS=$1
    INSTRUCTION=$2

    SERVICE_NAME=`getValueForColumn "$INSTRUCTION" 3`
    SERVICE_OPERATION=`getValueForColumn "$INSTRUCTION" 4`
    echo "Performing ${SERVICE_OPERATION} on service ${SERVICE_NAME} in server ${SERVER_ALIAS}"
    BASH_INSTRUCTION="service ${SERVICE_NAME} ${SERVICE_OPERATION}"

    executeInstruction ${SERVER_ALIAS} "${BASH_INSTRUCTION}"

    echo "Service operation done"
}