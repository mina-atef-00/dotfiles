# Dotfiles

Managed by [chezmoi](https://www.chezmoi.io/).

## Usage

Initialize on a new machine:
```bash
chezmoi init --apply git@github.com:mina-atef-00/dotfiles.git
```

Apply changes:
```bash
chezmoi apply
```

Install flatpaks:
```bash
chezmoi apply --include=scripts/install-flatpaks
# or run directly:
bash ~/.local/share/chezmoi/scripts/install-flatpaks
```

## Structure

- `home/.config/` - Application configurations
- `scripts/` - Chezmoi scripts (flatpak installation)
- `.chezmoi.toml` - Chezmoi configuration

## Hosts

Home configurations are shared between `asus` (desktop) and `lnvo` (laptop).
