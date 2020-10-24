source plugins/ServerFunction.sh 
source plugins/LinuxVMFunction.sh
source plugins/stringFunction.sh
source plugins/OperationsFunction.sh

source modules/PackageFunction.sh
source modules/FileFunction.sh
source modules/ServiceFunction.sh

TASK_FILE=nginx.task
#TASK_FILE=nginx_cleanup.task

INVENTORY_FILE=inventory

processTasks ${TASK_FILE} ${INVENTORY_FILE}