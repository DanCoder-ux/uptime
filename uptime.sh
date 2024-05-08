#!/bin/bash

up="before"
since="function"

showuptime(){

	local up=$(uptime -p | cut -c4-)
	local since=$(uptime -s)
	cat << EOF

 		-------------
	this machine has been up for ${up}
	it has been running since ${since}
		-------------
EOF
}
showuptime

