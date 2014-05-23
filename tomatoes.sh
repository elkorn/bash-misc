output=$(echo $(xdotool search --name ".{2}:.{2} \- Tomatoes$" getwindowname | grep -oP "\d{2}:\d{2}"))
pomodoro=

if [ -z $output ]
then
    if ! [ -z $(cat "/home/helluin/.pomodoro") ]
    then
        echo "unsetting" >> "/home/helluin/.pomotest"
        purple-remote "setstatus?status=available&message="
        cat "/dev/null" > "/home/helluin/.pomodoro"
    fi

    echo "--:--"
    echo "--:--" >> "/home/helluin/.pomotest"
else
    echo "pomotest: $(cat "/home/helluin/.pomodoro")" >> "/home/helluin/.pomotest"
    if [[ $output =~ 2[0-9]:[0-9]{2} ]]
    then
        echo "passed condition" >> "/home/helluin/.pomotest"
        if [ -z $(cat "/home/helluin/.pomodoro") ]
        then
            echo "setting" >> "/home/helluin/.pomotest"
            echo "pomodoro" > "/home/helluin/.pomodoro"
            purple-remote "setstatus?status=unavailable&message=pomodoro..."
        fi
    else
        echo "not passed condition" >> "/home/helluin/.pomotest"
    fi

    echo "$output"
    echo "$output" >> "/home/helluin/.pomotest"
fi