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
| **Hardware** | Lenovo Legion 5 15ACH6 |

## What's tracked

```
~/.config/niri/          → compositor config, keybindings, layout
~/.config/noctalia/      → notification daemon — dock, top bar, theme
~/.config/Antigravity/
  └── User/
      ├── settings.json  → editor preferences
      └── keybindings.json → custom keybinds (format, word wrap, line copy)
```

## Niri keybindings (notable changes)

Default niri bindings are heavily customized to suit personal ergonomics. Custom additions:

- Check `~/.config/niri/cfg/keybinds.kdl` for the full list

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
