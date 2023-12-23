# Neovim Development Environment Setup

This guide helps you set up Neovim for development, including the installation of essential plugins and tools.

## Getting Started

1. Start Neovim by running the following command:

    ```bash
    nvim
    ```

2. Let LazyInstaller manage plugin installations. Run the following command inside Neovim:

    ```vim
    :LazyInstall
    ```

## Installing Language Server and Formatter

1. Run the following command to open the Mason menu:

    ```vim
    :Mason
    ```

2. Search for the following plugins using '/' and choose them:

   - `black`
   - `pyright`
   - `flake8`
   - `efm`

3. After selecting the plugins, press 'i' to install them.

4. Restart Neovim to apply the changes.

## Checking Language Server and Formatter

1. Open a test file, for example:

    ```vim
    :e ~/projects/test.py
    ```

2. Check if the Language Server Protocol (LSP) and the formatter + linter are working.

## Customizing Notifications

If the notifier is disturbing, you can edit the `noice` plugin in `plugins/noice.lua`. Comment out all lines except `return{}`.

Example:

```lua
-- plugins/noice.lua
-- Comment out or remove other lines

return {}
```

## Build and run Image

Build the Docker image with:

```vim 
docker build -t nvim .
```

Run it with:

```vim 
docker run -it --rm nvim /bin/bash
```
