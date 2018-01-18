
declare -a ARGS
ARGS=($@)

while getopts "c:bs:@ED-:" opt ${ARGS[@]} ; do
    case "$opt" in
        c) COMM="$OPTARG" ;;
        b) ENUMDFL=0 ;;
        s) START="$OPTARG" ;;
        @) ;;
        -) LONG_OPTARG="${OPTARG#*=}"
            case $OPTARG in
                alpha ) echo $LONG_OPTARG ;;
                belt ) echo $LONG_OPTARG ;;
            esac ;;
        \?) usage ; exit 1 ;;
        *) break ;;
    esac
done

shift $((OPTIND - 1))


