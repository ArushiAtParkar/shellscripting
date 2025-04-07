#!/bin/bash

read -p "where are u from" country

if [ $country = "india" ]
then
	echo "indian"
elif [ $country = "britain" ]
then
	echo "british"
else
	echo "citizen of $country"
fi
