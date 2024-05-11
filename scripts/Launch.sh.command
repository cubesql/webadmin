#/bin/sh
#
clear

SCRIPT_PATH=$(dirname "$0")
TMOUT=10

echo "---------------------"
echo "- cubeSQL Web Admin -"
echo "---------------------"
echo ""
echo "Launch Web Application on Port:"
echo ""

PORT=4431
select portchoice in "80" "8080" "4431 (default)"; do
	case $REPLY in
		1)
			PORT=80
			break ;;
		2)
			PORT=8080
			break ;;
		3)
			PORT=4431
			break;;
		*)
			echo "Invalid choice, try again" >&2
	esac
done

echo ""
echo "Launching cubeSQL Web Admin on Port $PORT"
echo "Connect via Web Browser: http://localhost:$PORT"
echo ""
echo "Web Application is available while this Terminal Window is open."
echo "To quit press Ctrl+C or close Terminal Window."
echo ""

"${SCRIPT_PATH}/cubeSQLWebAdmin" --Port=${PORT}
