if [[ -z "$STRING_SESSION" && -z "$SESSION_NAME" ]]
then
	echo "Add SESSION_NAME or STRING_SESSION first!"
elif [[ -z "$STRING_SESSION" ]]
then
	python3 -m main.py
elif [[ -z "$SESSION_NAME" ]]
then
	python -m tod
else
	python3 -m tod & python3 main.py
	exit 1
fi
