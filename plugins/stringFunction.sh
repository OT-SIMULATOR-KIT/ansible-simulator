function getValueForColumn() {
    STRING=$1
    COLUMN=$2
    echo "${STRING}" | awk -F, -v COLUMN="$COLUMN"  '{print $COLUMN}'
}