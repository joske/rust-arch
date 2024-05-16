mkdir -p /home/rust/.config/fish/conf.d/
/usr/bin/fish -c "curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher"
/usr/bin/fish -c "fisher install IlanCosman/tide@v6"
/usr/bin/fish -c "tide configure --auto --style=Rainbow --prompt_colors='True color' --show_time='24-hour format' --rainbow_prompt_separators=Angled --powerline_prompt_heads=Sharp --powerline_prompt_tails=Flat --powerline_prompt_style='One line' --prompt_spacing=Compact --icons='Many icons' --transient=No"
/usr/bin/fish -c "alias -s vim nvim"
/usr/bin/fish -c "alias -s lg lazygit"
