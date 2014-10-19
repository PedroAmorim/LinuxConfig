function run_once(prg,arg_string,pname,screen)
    if not prg then
        do return nil end
    end

    if not pname then
       pname = prg
    end

    if not arg_string then 
        awful.util.spawn_with_shell("pgrep -f -u $USER -x '" .. pname .. "' || (" .. prg .. ")",screen)
    else
        awful.util.spawn_with_shell("pgrep -f -u $USER -x '" .. pname .. " ".. arg_string .."' || (" .. prg .. " " .. arg_string .. ")",screen)
    end
end

run_once("dropbox", "start -i", nil, 1)

-- Chargement service indispensable
-- run_once("gnome-settings-daemon")
-- run_once("gnome-keyring-daemon")
-- run_once("gnome-sound-applet")
-- run_once("nm-applet")
-- run_once("bluetooth-applet")
-- run_once("dropbox start -i")
--run_once("start-pulseaudio-x11")
--run_once("wicd-client");

--Chargement applications
--run_once("skype")


