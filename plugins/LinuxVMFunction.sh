function executeInstruction() {
    SERVER_ALIAS=$1
    BASH_INSTRUCTION=$2

    SERVER_HOST=`getServerHost inventory ${SERVER_ALIAS}`
    SERVER_USER=`getServerUser inventory ${SERVER_ALIAS}`

    echo "ssh ${SERVER_USER}@${SERVER_HOST} '${BASH_INSTRUCTION}'"

    ssh ${SERVER_USER}@${SERVER_HOST} "${BASH_INSTRUCTION}" < /dev/null
    echo "Execution done"
}

function executeCopyInstruction (){
    SERVER_ALIAS=$1
    LOCAL_FILE=$2
    REMOTE_FILE=$3

    SERVER_HOST=`getServerHost inventory ${SERVER_ALIAS}`
    SERVER_USER=`getServerUser inventory ${SERVER_ALIAS}`

    echo "scp ${LOCAL_FILE} ${SERVER_USER}@${SERVER_HOST}:${REMOTE_FILE}"
    scp ${LOCAL_FILE} ${SERVER_USER}@${SERVER_HOST}:${REMOTE_FILE}
}