# linux-dotfiles

My personal Linux config files for a minimal Wayland setup on CachyOS.

## System

| | |
|---|---|
| **OS** | CachyOS (Arch-based) |
| **Compositor** | [niri](https://github.com/YaLTeR/niri): scrollable tiling Wayland compositor |
| **Notifications** | [noctalia](https://github.com/noctalia/noctalia) |
| **Editor** | [Antigravity](https://antigravity.google): Google's agentic IDE |
| **Shell** | fish |

## What's tracked

```
~/.config/niri/          → compositor config, keybindings, layout
~/.config/noctalia/      → notification daemon — dock, top bar, theme
~/.config/Antigravity/
  └── User/
      ├── settings.json  → editor preferences
      └── keybindings.json → custom keybinds (format, word wrap, line copy)
```

# Niri keybindings
 
### Applications
 
| Key | Action |
|---|---|
| `Mod+Return` | Open terminal (Alacritty) |
| `Mod+Ctrl+Return` | Open app launcher (noctalia) |
| `Mod+B` | Open browser (Brave) |
| `Mod+E` | Open file manager (Nautilus) |
| `Mod+Alt+L` | Lock screen |
| `Mod+Shift+Q` | Session menu |
 
### Window Management
 
| Key | Action |
|---|---|
| `Mod+Q` | Close window |
| `Mod+Left / A / H` | Focus column left |
| `Mod+Right / D / L` | Focus column right |
| `Mod+Shift+Left / A / H` | Move column left |
| `Mod+Shift+Right / D / L` | Move column right |
| `Mod+Home / End` | Focus first / last column |
| `Mod+Shift+Home / End` | Move column to first / last |
| `Mod+T` | Toggle floating window |
| `Mod+F` | Fullscreen window |
| `Mod+C` | Center column |
| `Mod+Ctrl+C` | Center all visible columns |
| `Mod+Ctrl+F` | Expand column to available width |
| `Mod+Minus / Equal` | Resize column width -/+ 10% |
| `Mod+Shift+Minus / Equal` | Resize window height -/+ 10% |
 
### Workspaces
 
| Key | Action |
|---|---|
| `Mod+Down / S / J` | Focus workspace below |
| `Mod+Up / W / K` | Focus workspace above |
| `Mod+Shift+Down / S` | Move column to workspace below |
| `Mod+Shift+Up / W` | Move column to workspace above |
| `Mod+1..9` | Switch to workspace 1–9 |
| `Mod+Ctrl+1..9` | Move column to workspace 1–9 |
| `Mod+Tab` | Switch to previous workspace |
| `Mod+O` | Toggle overview |
 
### Screenshots
 
| Key | Action |
|---|---|
| `Ctrl+Shift+1` | Screenshot (region picker) |
| `Ctrl+Shift+2` | Screenshot entire screen |
| `Ctrl+Shift+3` | Screenshot focused window |
 
### Misc
 
| Key | Action |
|---|---|
| `Mod+Shift+Escape` | Show hotkey overlay |
| `Mod+Escape` | Toggle keyboard shortcut inhibitor |
| `Mod+Shift+P` | Turn off monitors |
| `Ctrl+Alt+Delete` | Quit niri |
 

## Antigravity keybindings (notable changes)

| Key | Action |
|---|---|
| `Alt+Q` | Format document |
| `Alt+W` | Toggle word wrap |
| `Shift+Alt+↓` | Copy line down |
| `Shift+Alt+↑` | Copy line up |

## Fresh install setup

```bash
# install chezmoi
sudo pacman -S chezmoi

# pull dotfiles
chezmoi init https://github.com/shrutikcs/linux-dotfiles
chezmoi apply
```

## Notes

- Setup is fresh as of April 2026, will grow over time
- Dual booting with Windows on the same drive
- Display manager: GDM/GNOME
