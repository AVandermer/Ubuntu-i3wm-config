#!/usr/bin/env bash

# Завершить текущие экземпляры polybar
killall -q polybar

# Ожидание полного завершения процессов
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Запуск раздельных панелей (островков) из конфига автора
polybar workspace 2>&1 | tee -a /tmp/polybar_workspace.log & disown
polybar music 2>&1 | tee -a /tmp/polybar_music.log & disown
polybar status 2>&1 | tee -a /tmp/polybar_status.log & disown

echo "Островки Polybar загружены..."
