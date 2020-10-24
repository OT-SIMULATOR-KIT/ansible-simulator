function processInstruction() {
    INSTRUCTION=$1

    SERVER_ALIAS=`getValueForColumn "$INSTRUCTION" 1`
    SERVER_OPERATION=`getValueForColumn "$INSTRUCTION" 2`
    
    echo "***********************************"
    echo "***********************************"
    echo "${SERVER_OPERATION}  test operation to be performed on ${SERVER_ALIAS}"

    case ${SERVER_OPERATION} in
    "install")
        installOperation ${SERVER_ALIAS} ${INSTRUCTION}
        ;;
    "uninstall")
        uninstallOperation ${SERVER_ALIAS} ${INSTRUCTION}
        ;;
    "copy")
        copyOperation ${SERVER_ALIAS} ${INSTRUCTION}
        ;;
    "deleteRemote")
        deleteOperation ${SERVER_ALIAS} ${INSTRUCTION}
        ;;
    "service")
        serviceOperation ${SERVER_ALIAS} ${INSTRUCTION}
        ;;
    *)
         echo "operation $operation isn't supported, please raise request for same"
        ;;
    esac
    echo "Process Instruction done"
}

function processTasks() {
    local TASK_FILE=$1
    local INVENTORY_FILE=$2
 
    while IFS= read -r TASK_INSTRUCTION
    do
        processInstruction "${TASK_INSTRUCTION}"
        echo "Time to pick next instruction post ${TASK_INSTRUCTION}"
    done < ${TASK_FILE}
}