#!/bin/sh

for i in $(seq 1 5); do
  /opt/bin/python3 /opt/etc/movies/digitalreleasesv3.py > /etc/movies/log.txt
  ret=$?
  if [ $ret -eq 0 ]; then
    logger -t "digitalreleasesv3.py" "Загрузка завершена успешно."
    break
  else
    logger -t "digitalreleasesv3.py" "Ошибка загрузки."
  fi
done
