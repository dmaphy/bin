#!/bin/zsh
local COL1=$'\e[1;30m'
local COL2=$'\e[1;34m'

function load(){
    LOAD=`print ${${$(=uptime)[10]}:gs/,//}`
    case $LOAD {
        0.0*)     llevel="sleeping"   ;;
        0.[123]*) llevel="cool"   ;;
        0.[456]*) llevel="normal"   ;;
        0.[789]*) llevel="WTF?!"  ;;
        1*)       llevel="dangerous!" ;;
        2*)       llevel="HELP ME!!!111!"   ;;
        [3-9]*)   llevel="He's dead jim!"   ;;
        *)        return         ;;
    }
    echo "$llevel"
}

echo "${COL1},----,----,----, Welcome on $(hostname)"
echo "${COL1}|${COL1}0000${COL1}|${COL2}1111${COL1}|${COL1}0000${COL1}|"
echo "${COL1}|${COL1}0000${COL1}|${COL2}1111${COL1}|${COL1}0000${COL1}| System: $(uname -sr)"
echo "${COL1}+----+----+----+ Uptime: $(print ${${$(=uptime)[3,5]}:gs/,//})"
echo "${COL1}|${COL1}0000${COL1}|${COL1}0000${COL1}|${COL2}1111${COL1}| Load..: $(load)"
echo "${COL1}|${COL1}0000${COL1}|${COL1}0000${COL1}|${COL2}1111${COL1}| Date..: $(date "+%Y-%m-%d %H:%M:%S")"
echo "${COL1}+----+----+----+"
echo "${COL1}|${COL2}1111${COL1}|${COL2}1111${COL1}|${COL2}1111${COL1}|"
echo "${COL1}|${COL2}1111${COL1}|${COL2}1111${COL1}|${COL2}1111${COL1}|"
echo "${COL1}'----'----'----'"
echo $'\e[0m'
