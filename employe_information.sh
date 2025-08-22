#!/bin/bash

read -p "[+] enter your name :" NAME
read -p "[+] enter your employee id : " ID
read -p "[+] enter your department :  " DEPARTMENT
read -p "[+] enter your gender : " GENDER

info=$NAME,$ID,$DEPARTMENT,$GENDER

echo
read -p "do you have given correct information[y/n]" input

case "$input" in
	n|N )
	echo "exiting"
	exit
	;;
	y|Y)
	echo "$INFO" >> employe_data.csv
	echo "inforamation saved to employee_data.csv"
	exit
	;;
	*)
	echo "invalid input. exiting.."
	exit
	;;
esac
echo "data has been stored successfully"

