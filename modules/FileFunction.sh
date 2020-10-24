function copyOperation() {
    SERVER_ALIAS=$1
    INSTRUCTION=$2

    localFile=`getValueForColumn "$INSTRUCTION" 3`
    remoteFile=`getValueForColumn "$INSTRUCTION" 4`
    echo "Copying file ${localFile} to server ${SERVER_ALIAS} at ${remoteFile}"

    executeCopyInstruction ${SERVER_ALIAS} ${localFile} ${remoteFile}

    echo "Copy operation done"
}

function deleteOperation() {
    SERVER_ALIAS=$1
    INSTRUCTION=$2
    
    REMOTE_FILE=`getValueForColumn "$INSTRUCTION" 3`

    echo "Performing deletion of file  ${REMOTE_FILE} in server ${SERVER_ALIAS}"
    BASH_INSTRUCTION="rm -rf ${REMOTE_FILE}"

    executeInstruction ${SERVER_ALIAS} "${BASH_INSTRUCTION}"

    echo "Delete operation done"
}
