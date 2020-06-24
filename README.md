# Felipe Santos's dotfiles

This dotfiles repository is currently aimed for [Ubuntu on WSL](https://ubuntu.com/wsl). See how to get started with WSL [here](https://docs.microsoft.com/pt-br/windows/wsl/install-win10).

## Convenience script

You can use the [convenience script](./clone_and_install.sh) with:

```bash
sh -c "$(curl -fsSL https://git.io/felipe-dotfiles)"
```

Or, shorter (and less secure), with:

```bash
curl -L git.io/felipe-dotfiles | sh
```

### Environment variables

The convenience script supports two environment variables:

- `DOTFILES_REPO`: Default to `felipecassiors`.
- `DOTFILES_BRANCH`: Default to `master`

Example:

- Using the convenience script to clone the dotfiles repository on branch `beta`:

  ```bash
  DOTFILES_BRANCH=beta sh -c "$(curl -fsSL https://git.io/felipe-dotfiles)"
  ```

## Manually

You can also do it manually, it's simple after all.

```bash
git clone https://github.com/felipecassiors/dotfiles "$HOME/.dotfiles"
"$HOME/.dotfiles/install"
```
