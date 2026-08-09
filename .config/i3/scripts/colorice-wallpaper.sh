#!/usr/bin/env bash
# Скрипт для смены обоев и цветовой темы через colorice

if [ -n "$1" ]; then
    # --- Ручной запуск (через терминал) ---
    WALLPAPER="$1"
    if [ ! -f "$WALLPAPER" ]; then
        echo "File not found: $WALLPAPER"
        exit 1
    fi
    
    # Меняем фон
    feh --bg-fill "$WALLPAPER"
    
    # Запускаем colorice в интерактивном режиме (вы сами выберете палитру 1-4)
    colorice "$WALLPAPER" --apply
    
    # Перезапускаем picom
    killall -q picom
    picom -b
    
    notify-send "Theme refreshed" "$(basename "$WALLPAPER")"

else
    # --- Запуск по горячей клавише ---
    WALLPAPER_DIR=~/Pictures/wallpapers
    WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

    if [ -z "$WALLPAPER" ]; then
        notify-send -u critical "Error" "Wallpaper not found in $WALLPAPER_DIR"
        exit 1
    fi

    # Выбираем случайную палитру
    MOODS=("vibrant" "warm" "cool")
    RANDOM_MOOD=${MOODS[$RANDOM % 3]}

    # Меняем фон
    feh --bg-fill "$WALLPAPER"

    # Генерируем и применяем цвета тихо, с рандомным настроением
    colorice "$WALLPAPER" --apply --no-preview -q -m "$RANDOM_MOOD"

    # Перезапускаем picom
    killall -q picom
    picom -b

    # Уведомление об успешной смене темы
    notify-send "Random theme ($RANDOM_MOOD)" "$(basename "$WALLPAPER")"
fi
