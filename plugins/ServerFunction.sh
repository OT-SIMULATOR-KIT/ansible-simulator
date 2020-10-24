function getServerEntry() {
    INVENTORY=$1
    SERVER_ALIAS=$2

    cat inventory | grep ^${SERVER_ALIAS} 
}

function getServerHost() {
    INVENTORY=$1
    SERVER_ALIAS=$2

    SERVER_ENTRY=`getServerEntry ${INVENTORY} ${SERVER_ALIAS}`
    SERVER_HOST=`getValueForColumn "${SERVER_ENTRY}" 3`
    echo ${SERVER_HOST}
}

function getServerUser() {
    INVENTORY=$1
    SERVER_ALIAS=$2

    SERVER_ENTRY=`getServerEntry ${INVENTORY} ${SERVER_ALIAS}`
    SERVER_HOST=`getValueForColumn "${SERVER_ENTRY}" 2`
    echo ${SERVER_HOST}    
}