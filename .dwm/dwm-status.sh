#!/bin/bash

while true
do
	LOCATION=""
	export weather="$(curl -s wttr.in/$LOCATION?format=1)"
	while true
	do
		sh ~/.dwm/dwm-status-refresh.sh
		sleep 1 
	done
	sleep 3600
done
