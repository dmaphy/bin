# Some people don't like fortune. If you uncomment the following lines,
# you will have a fortune each time you log in ;-)
fortune=/usr/bin/fortune
cowsay=/usr/bin/cowsay

if [ -x $cowsay -a -x $fortune ]; then
	echo
	$fortune -s | $cowsay
	echo
elif [ -x /usr/bin/fortune ]; then
    echo
    $fortune -s
    echo
fi
