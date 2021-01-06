#!/bin/bash

trap 'kill $(jobs -p)' EXIT #當使用者按下ctrl-c即會滿足trap條件，就會進行kill $(jobs -p)這個指令，已終止程式

while true;  #利用無限迴圈，不停對企業網站應用系統提出服務需求
do
  curl '120.96.143.50:8080/cgi-bin/kungfu?test&a'> /dev/null 2>&1
done &
while true; do  #利用無限迴圈，不停對企業網站應用系統提出服務需求
  curl '120.96.143.50:8080/cgi-bin/kungfu?test&b'> /dev/null 2>&1
done &
while true; do #在使用者畫面上顯示目前hap的管理狀態。
  sleep 2
  clear
  kubectl get hpa hpa-sp
  echo "關閉請按 ctrl-c"
done
