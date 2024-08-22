# Neovim Configuration

[**English Version**](#english) | [**Versión en Español**](#español)

---

## English

### Introduction

This repository contains my Neovim configuration files, based on Lua, and using `lazy.nvim` as a plugin manager. Each file in the `config` directory corresponds to the configuration of a plugin or set of functionalities in Neovim.

## Screenshots

<p align="center">
     <img src="/img/1.png" alt="" width="300"/>
     <img src="/img/2.png" alt="" width="300"/>
     <img src="/img/3.png" alt="" width="300"/>
     <img src="/img/4.png" alt="" width="300"/>
     <img src="/img/5.png" alt="" width="300"/>
     <img src="/img/6.png" alt="" width="300"/>
</p>

## File Structure

- **alpha.lua**: Configuration for Neovim's start screen using the `alpha-nvim` plugin.
- **autopairs.lua**: Configuration for handling automatic closing of parentheses, braces, and other pairs using `nvim-autopairs`.
- **catppuccin.lua**: Configuration of the `catppuccin` theme for Neovim, with support for different styles and integration settings.
- **completions.lua**: Configuration for autocompletion, likely using `nvim-cmp` or similar.
- **git-stuff.lua**: Configuration of Git-related plugins, such as `vim-fugitive`, `gitsigns.nvim`, or similar.
- **gitsigns.lua**: Specific configuration for the `gitsigns.nvim` plugin, which provides indicators in the gutter for changes in Git-versioned files.
- **indent-blankline.lua**: Configuration for `indent-blankline.nvim`, which adds indentation guides to make code more readable.
- **lsp-config.lua**: Configuration of Language Server Protocols (LSP) for Neovim, using `nvim-lspconfig`.
- **lualine.lua**: Statusline configuration using `lualine.nvim`, with support for different themes and modules.
- **neo-tree.lua**: Configuration for `neo-tree.nvim`, Neovim's file explorer.
- **neodev.lua**: Configuration for `neodev.nvim`, facilitating plugin and configuration development in Neovim.
- **none-ls.lua**: Configuration for `null-ls.nvim`, allowing the use of linters, formatters, and other tools with Neovim.
- **nvim-tmux-navigation.lua**: Configuration for integrated navigation between Neovim and tmux.
- **telescope.lua**: Configuration for `telescope.nvim`, a powerful finder and selector for Neovim.
- **treesitter.lua**: Configuration for `nvim-treesitter`, providing advanced syntax highlighting based on syntax trees.
- **vim-splits.lua**: Configuration for managing and handling splits in Neovim.

### Prerequisites

Ensure you have the following tools installed on your system:

- [Neovim](https://neovim.io/) v0.8 or higher
- [Git](https://git-scm.com/)
- [Node.js](https://nodejs.org/) and [npm](https://www.npmjs.com/) (for some LSP and Treesitter plugins)

### Installation

1. Clone this repository to your Neovim configuration directory:

   ```sh
   git clone https://github.com/SwintDev/Config-Neovim.git ~/.config/nvim
   ```

# Configuración de Neovim

## Español

### Introducion

Este repositorio contiene la configuración de Neovim basada en Lua, utilizando `lazy.nvim` como gestor de plugins. Cada archivo en el directorio `config` corresponde a la configuración de un plugin o de un conjunto de funcionalidades en Neovim.

## Algunas Imagenes

<p align="center">
     <img src="/img/1.png" alt="" width="300"/>
     <img src="/img/2.png" alt="" width="300"/>
     <img src="/img/3.png" alt="" width="300"/>
     <img src="/img/4.png" alt="" width="300"/>
     <img src="/img/5.png" alt="" width="300"/>
     <img src="/img/6.png" alt="" width="300"/>
</p>

## Estructura de Archivos

- **alpha.lua**: Configuración para la pantalla de inicio de Neovim utilizando el plugin `alpha-nvim`.
- **autopairs.lua**: Configuración para manejar el cierre automático de paréntesis, llaves y otros pares usando `nvim-autopairs`.
- **catppuccin.lua**: Configuración del tema `catppuccin` para Neovim, con soporte para diferentes estilos y configuraciones de integración.
- **completions.lua**: Configuración para la autocompletación, posiblemente usando `nvim-cmp` o similar.
- **git-stuff.lua**: Configuración de plugins relacionados con Git, como `vim-fugitive`, `gitsigns.nvim`, o similares.
- **gitsigns.lua**: Configuración específica para el plugin `gitsigns.nvim`, que proporciona indicadores en el margen para cambios en archivos versionados con Git.
- **indent-blankline.lua**: Configuración para `indent-blankline.nvim`, que añade líneas de indentación para facilitar la lectura del código.
- **lsp-config.lua**: Configuración de los servidores de lenguaje (LSP) para Neovim, utilizando `nvim-lspconfig`.
- **lualine.lua**: Configuración de la barra de estado utilizando `lualine.nvim`, con soporte para diferentes temas y módulos.
- **neo-tree.lua**: Configuración para `neo-tree.nvim`, el explorador de archivos de Neovim.
- **neodev.lua**: Configuración para `neodev.nvim`, que facilita el desarrollo de plugins y configuraciones en Neovim.
- **none-ls.lua**: Configuración para `null-ls.nvim`, que permite usar linters, formatters y otras herramientas con Neovim.
- **nvim-tmux-navigation.lua**: Configuración para la navegación integrada entre Neovim y tmux.
- **telescope.lua**: Configuración para `telescope.nvim`, un potente buscador y selector para Neovim.
- **treesitter.lua**: Configuración para `nvim-treesitter`, que proporciona resaltado de sintaxis avanzado basado en árboles sintácticos.
- **vim-splits.lua**: Configuración para la gestión y manejo de splits en Neovim.

## Requisitos Previos

Asegúrate de tener las siguientes herramientas instaladas en tu sistema:

- [Neovim](https://neovim.io/) v0.8 o superior
- [Git](https://git-scm.com/)
- [Node.js](https://nodejs.org/) y [npm](https://www.npmjs.com/) (para algunos plugins de LSP y Treesitter)

## Instalación

1. Clona este repositorio en tu directorio de configuración de Neovim:

   ```sh
   git clone https://github.com/SwintDev/Config-Neovim.git ~/.config/nvim
   ```
