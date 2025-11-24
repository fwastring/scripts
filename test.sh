dbus-monitor "interface='org.freedesktop.Notifications'" |
while read -r line; do
    echo "$line" | grep -e "🎊" -e "🎉" && confetti
done

