#!/bin/bash

echo "🚀 Восстанавливаем идеальный сетап..."

# Создаем нужные директории в системе
mkdir -p ~/.config/picom
mkdir -p ~/.config/wal/templates
mkdir -p ~/.config/i3
mkdir -p ~/.config/dunst
mkdir -p ~/.local/bin

# Линкуем одиночные файлы
ln -sf ~/dotfiles/.config/picom/picom.conf ~/.config/picom/picom.conf
ln -sf ~/dotfiles/.config/wal/templates/dunstrc ~/.config/wal/templates/dunstrc
ln -sf ~/dotfiles/.config/i3/config ~/.config/i3/config

# Линкуем папки целиком (Rofi и Polybar)
ln -sfn ~/dotfiles/.config/polybar ~/.config/polybar
ln -sfn ~/dotfiles/.config/rofi ~/.config/rofi

# Линкуем наши кастомные скрипты
[ -f ~/dotfiles/.local/bin/setbg ] && ln -sf ~/dotfiles/.local/bin/setbg ~/.local/bin/setbg
[ -f ~/dotfiles/.local/bin/zscroll ] && ln -sf ~/dotfiles/.local/bin/zscroll ~/.local/bin/zscroll

# Восстанавливаем связь Dunst с Pywal
ln -sf ~/.cache/wal/dunstrc ~/.config/dunst/dunstrc

# Делаем скрипты исполняемыми
chmod +x ~/dotfiles/.local/bin/* 2>/dev/null || true

echo "✅ Готово! Твоя система полностью развернута."
