profile=$(echo "nvidia\non-demand\nintel" | dmenu -i -p "Enter PRIME profile")
shutdownNow=$(echo "Yes\nNo" | dmenu -i -p "Shutdown after?" )
prime-select $profile && [ "$shutdownNow" = "Yes" ] && shutdown now


