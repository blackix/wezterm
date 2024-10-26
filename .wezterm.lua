local wezterm = require 'wezterm'

return {
  -- Colore di sfondo e di testo
  color_scheme = "Catppuccin Mocha",

  -- Font
  font = wezterm.font("Hack"),
  font_size = 12.0,
  

  -- Trasparenza della finestra
  window_background_opacity = 0.9,

  -- Abilita scorciatoia per dividere il pannello orizzontalmente o verticalmente
  keys = {
    {key="d", mods="CTRL|SHIFT", action=wezterm.action.SplitHorizontal{domain="CurrentPaneDomain"}},
    {key="D", mods="CTRL|SHIFT", action=wezterm.action.SplitVertical{domain="CurrentPaneDomain"}},
    {key="w", mods="CTRL|SHIFT", action=wezterm.action.CloseCurrentPane{confirm=true}},
    {key="t", mods="CTRL", action=wezterm.action{SpawnTab="CurrentPaneDomain"}},
    {key="q", mods="CTRL", action=wezterm.action{CloseCurrentTab={confirm=true}}},
    {key="v", mods="CTRL", action=wezterm.action.PasteFrom "Clipboard"},
},

  -- Configurazione della barra del titolo
  hide_tab_bar_if_only_one_tab = false,

  -- Personalizzare lo stile della barra del titolo
  window_frame = {
    active_titlebar_bg = "#2e3440",  -- Colore di sfondo della barra del titolo attiva
    inactive_titlebar_bg = "#3b4252",  -- Colore di sfondo della barra del titolo inattiva
    font = wezterm.font({family="JetBrains Mono", weight="Bold"}), -- Font utilizzato nella barra del titolo
    font_size = 12.0,  -- Dimensione del font nella barra del titolo
  },
  -- Scrollback buffer (numero di righe memorizzate)
  scrollback_lines = 3500,

  -- Lanciare una shell specifica
  default_prog = {"/bin/zsh"},  -- Puoi cambiare "/bin/zsh" con il tuo shell preferito

  -- Personalizza la barra delle schede
  enable_tab_bar = true,
  tab_bar_at_bottom = true,
  use_fancy_tab_bar = false,
}

