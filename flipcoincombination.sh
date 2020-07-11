#!/bin/bash
H=1
T=0
nofh=0
noft=0
nofl=0
declare -A Single double triple
function single() {
	while [ $nofl -lt 10 ]
	do
		r=$((RANDOM%2))
		if [ $r -eq $H ]
		then
			((nofh++))
		else
			((noft++))
		fi
		((nofl++))
	done
	hper=$((nofh*10))
	tper=$((noft*10))
	single $hper $tper 
}
