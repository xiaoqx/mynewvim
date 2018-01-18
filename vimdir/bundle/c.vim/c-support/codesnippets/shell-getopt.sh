
declare -a ARGS
ARGS=($@)

while getopts "c:bs:@ED" opt ${ARGS[@]} ; do
    case "$opt" in
        c) COMM="$OPTARG" ;;
        b) ENUMDFL=0 ;;
        s) START="$OPTARG" ;;
        @) ;;
        \?) usage ; exit 1 ;;
        *) break ;;
    esac
done

shift $((OPTIND - 1))


