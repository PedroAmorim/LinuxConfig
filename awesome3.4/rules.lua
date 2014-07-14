-- {{{ Rules
awful.rules.rules = {
    -- All clients will match this rule.
    { rule = { },
      properties = { border_width = beautiful.border_width,
                     border_color = beautiful.border_normal,
                     focus = true,
                     keys = clientkeys,
                     buttons = clientbuttons } },
    { rule = { class = "MPlayer" },
      properties = { floating = true } },
    { rule = { class = "pinentry" },
      properties = { floating = true } },
    { rule = { class = "gimp" },
      properties = { floating = true } },
    -- Set Web Browsers to always map on tags number 2 of screen 1.
    { rule_any = { class = {"Firefox","Chromium","Iceweasel"} },
      properties = { tag = tags[1][2], switchtotag = true } },
    -- Switch automatique pour Skype et Thunderbird
    { rule_any = { class = {"Icedove","Thunderbird"} },
      properties = { tag = tags[1][3], switchtotag = true } },
    -- Switch automatique pour Skype
    { rule_any = { class = {"Skype"} },
      properties = { tag = tags[1][4], switchtotag = true } },
    -- Set Netbeans to always map on tags number 4 of screen 1.
    { rule_any = { class = {"Eclipse","NetBeans","Sublime-Text-2"} },
      properties = { tag = tags[1][5], switchtotag = true } },
    -- Set Gedit to always map on tags number 5 of screen 1.
    { rule = { class = "Gedit" },
      properties = { tag = tags[1][6], switchtotag = true } },




}
-- }}}
