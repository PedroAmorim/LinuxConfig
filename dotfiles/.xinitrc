#charge config Xressources
xrdb -merge ~/.Xresources

# Start the window manager
exec awesome

# Ecran de veille
xscreensaver -nosplash &

# gnome-settings-daemon &      # handles themes, starts gnome-screensaver. You may have to use gconf to disable it setting the background.
# nm-applet &                  # assuming you're using Network Manager
# gnome-power-manager &        # for laptops and stuff
# gnome-volume-manager &       # for mounting CDs, USB sticks, and such
# eval `gnome-keyring-daemon`  # SSH/GPG agent
# exec awesome                 # awesome receives xinit's process id; when it terminates, X will be terminated
