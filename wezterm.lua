local wezterm = require "wezterm"
act = wezterm.action

_keys = {
    {
        key = 't',
        mods = 'ALT',
        action = act.SpawnTab 'CurrentPaneDomain',
    },
    {
        key = 'UpArrow',
        mods = 'ALT',
        action = act.ActivatePaneDirection 'Up',
    },
    {
        key = 'DownArrow',
        mods = 'ALT',
        action = act.ActivatePaneDirection 'Down',
    },
    {
        key = 'LeftArrow',
        mods = 'ALT',
        action = act.ActivateTabRelative(-1),
    },
    {
        key = 'RightArrow',
        mods = 'ALT',
        action = act.ActivateTabRelative(1),
    },
    {
        key = "v",
        mods = "CTRL",
        action = act.PasteFrom "Clipboard",
    },
    {
        key = "x",
        mods = "CTRL",
        action = act.CopyTo "Clipboard",
    },
    {
        key = "p",
        mods = "CTRL",
        action = act.SplitVertical { domain = "CurrentPaneDomain" }
    },
    {
        key = "w",
        mods = "ALT",
        action = act.CloseCurrentPane { confirm = true }
    },
}

_colors = {
    tab_bar = {
        background = "#1a1a1a",
        active_tab = {
            bg_color = "#4275c9",
            fg_color = "#4275c9",
        },
        inactive_tab = {
            bg_color = "#363e4d",
            fg_color = "#363e4d",
        },
        inactive_tab_hover = {
            bg_color = "#4275c9",
            fg_color = "#4275c9",
        },
        new_tab = {
            bg_color = "#363e4d",
            fg_color = "#aaaaaa",
        },
        new_tab_hover = {
            bg_color = "#4275c9",
            fg_color = "#111111",
            italic = false,
        }
    }
}

return {
    keys = _keys,
    font = wezterm.font("CaskaydiaCove NF", {
        weight = "Bold", italic = true,
    }),
    text_background_opacity = 1,
    window_background_opacity = 0.8,
    initial_cols = 120,
    initial_rows = 45,
    color_scheme = "Twilight",
    hide_tab_bar_if_only_one_tab = true,
    tab_max_width  = 2,
    use_fancy_tab_bar=false,
    colors = _colors,
}
