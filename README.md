# My Personalized Neovim Configuration

This is my personalized Neovim configuration, optimized for Java development and a smooth editing experience. It uses **lazy.nvim** as the plugin manager for efficient plugin loading and configuration.

The setup is modular, split between:
- Core settings (keymaps, options)
- Individual plugin configurations in the `plugins` directory

The `init.lua` file contains a clean **lazy.nvim** bootstrap with dynamic plugin loading.

## Notable Features

- **Java Development Tools**:
  - `jdtls` (Java Language Server)
  - `dap` (Debug Adapter Protocol)
- **Git Integration**:
  - `git-blame` for inline blame annotations
- **Code Navigation**:
  - `telescope` for fuzzy finding
  - `harpoon` for quick navigation between files
- **LSP and Completion**:
  - `mason` for LSP installation
  - `nvim-cmp` for completion
- **UI Enhancements**:
  - `lualine` for a customizable statusline
  - `barbecue` for breadcrumb navigation
  - `indent-blankline` for better indent visualization
- **Tmux Integration** for smooth workflow between Neovim and Tmux
- **Custom Filetype Configurations** for:
  - Java
  - Markdown

## Showcase
![image](https://github.com/user-attachments/assets/3990d490-1e77-41f1-87b5-a59fa08fe73a)
![image](https://github.com/user-attachments/assets/d8e01699-77ba-4d96-9f2b-54263032a998)


