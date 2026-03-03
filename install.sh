#!/bin/bash

echo "🚀 Восстанавливаем идеальный сетап..."

# Создаем нужные директории, если их нет
mkdir -p ~/.config/picom
mkdir -p ~/.config/wal/templates
mkdir -p ~/.config/i3
mkdir -p ~/.config/dunst

# Создаем символические ссылки (симлинки)
ln -sf ~/dotfiles/.config/picom/picom.conf ~/.config/picom/picom.conf
ln -sf ~/dotfiles/.config/wal/templates/dunstrc ~/.config/wal/templates/dunstrc
ln -sf ~/dotfiles/.config/i3/config ~/.config/i3/config

# Восстанавливаем симлинк для самого Dunst, чтобы он читал Pywal
ln -sf ~/.cache/wal/dunstrc ~/.config/dunst/dunstrc

echo "✅ Готово! Не забудь установить pywal, picom и dunst."
