#!/bin/bash
threshold=80
usage=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

if [ "$usage" -ge "$threshold" ]; then
    echo "경고: 디스크 사용량 ${usage}%"
else
    echo "정상: 디스크 사용량 ${usage}%"
fi
