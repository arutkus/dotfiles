# Neovim Configuration - Stormis

A modern Neovim configuration built with lazy.nvim, featuring a clean and efficient development environment.

## 🚀 Quick Start

1. **Prerequisites:**
   - Neovim 0.9.0+
   - Git
   - ripgrep (for fzf-lua)
   - Node.js (for LSP servers)

2. **Installation:**
   ```bash
   # Clone this repository
   git clone <your-repo-url> ~/.config/nvim
   
   # Start Neovim (plugins will auto-install)
   nvim
   ```

## 📁 Configuration Structure

```
nvim/
├── init.lua                 # Main entry point
├── lazy-lock.json          # Plugin lock file
└── lua/
    ├── stormis/            # Core configuration
    │   ├── init.lua        # Autocommands and core setup
    │   ├── settings.lua    # Neovim options and settings
    │   └── mappings.lua    # Key mappings
    └── plugins/            # Plugin configurations
        ├── lsp.lua         # Language Server Protocol
        ├── treesitter.lua  # Syntax highlighting
        ├── fzf-lua.lua     # Fuzzy finder
        ├── bufferline.lua  # Buffer tabs
        ├── lualine.lua     # Status line
        ├── nvim-tree.lua   # File explorer
        ├── toggleterm.lua  # Terminal
        └── ...             # Other plugins
```

## ⌨️ Keybindings Cheatsheet

### 🎯 Leader Key
- **Leader**: `-` (dash)

### 📁 File & Buffer Management

| Key | Action | Description |
|-----|--------|-------------|
| `<C-f>` | `fzf-lua files()` | Find files |
| `<leader>f` | `fzf-lua live_grep()` | Search in files |
| `<TAB>` | `:bnext` | Next buffer |
| `<S-TAB>` | `:bprevious` | Previous buffer |
| `<leader>bd` | `:bd` | Delete buffer |
| `<leader><leader>d` | `:bd` | Delete buffer (alternative) |
| `<leader>1-9` | Go to buffer 1-9 | Quick buffer switching |
| `<leader>$` | Go to last buffer | Switch to most recent buffer |
| `gf` | `:edit <cfile>` | Edit file under cursor |

### 🪟 Window Management

| Key | Action | Description |
|-----|--------|-------------|
| `<C-h/j/k/l>` | Navigate windows | Move between windows (tmux-aware) |
| `<Up/Down>` | Resize window | Increase/decrease height |
| `<Left/Right>` | Resize window | Increase/decrease width |

### 🔍 Search & Navigation

| Key | Action | Description |
|-----|--------|-------------|
| `n` | `nzzzv` | Next search result (centered) |
| `N` | `Nzzzv` | Previous search result (centered) |
| `<C-d>` | `<C-d>zz` | Half page down (centered) |
| `<C-u>` | `<C-u>zz` | Half page up (centered) |
| `<leader><esc>` | `:noh` | Clear search highlights |
| `<space>` | `zz` | Center cursor |

### ✏️ Editing

| Key | Action | Description |
|-----|--------|-------------|
| `Y` | `y$` | Yank to end of line |
| `H` | `^` | Go to start of line |
| `L` | `$` | Go to end of line |
| `J` | `mzJ` | Join lines (keep cursor) |
| `;;` | `;<Esc>` | Add semicolon at end |
| `,,` | `,<Esc>` | Add comma at end |

### 📋 Visual Mode

| Key | Action | Description |
|-----|--------|-------------|
| `J` | Move line down | Move selected lines down |
| `K` | Move line up | Move selected lines up |
| `H` | `^` | Go to start of line |
| `L` | `g_` | Go to end of line |
| `<` | `<gv` | Indent left (stay in visual) |
| `>` | `>gv` | Indent right (stay in visual) |
| `y` | `myy` | Yank with mark |
| `Y` | `myY` | Yank line with mark |
| `<leader>p` | `"_dP` | Paste without yanking |

### 🗂️ File Explorer (NvimTree)

| Key | Action | Description |
|-----|--------|-------------|
| `<C-\>` | `:NvimTreeToggle` | Toggle file explorer |

### 🖥️ Terminal

| Key | Action | Description |
|-----|--------|-------------|
| `<C-Enter>` | Toggle terminal | Open/close floating terminal |

### 🧘 Zen Mode

| Key | Action | Description |
|-----|--------|-------------|
| `<leader>=` | Toggle zen mode | Distraction-free editing |

### 💬 Comments

| Key | Action | Description |
|-----|--------|-------------|
| `gcc` | Toggle line comment | Comment/uncomment line |
| `gc` | Toggle line comment | Comment/uncomment in visual mode |
| `gbc` | Toggle block comment | Comment/uncomment block |

### 🔧 Surround

| Key | Action | Description |
|-----|--------|-------------|
| `ys` | Add surround | Add surrounding characters |
| `ds` | Delete surround | Remove surrounding characters |
| `cs` | Change surround | Replace surrounding characters |

### 🌳 Treesitter Text Objects

| Key | Action | Description |
|-----|--------|-------------|
| `af` | Select function | Select around function |
| `if` | Select function inner | Select inside function |
| `ac` | Select class | Select around class |
| `ic` | Select class inner | Select inside class |
| `aa` | Select parameter | Select around parameter |
| `ia` | Select parameter inner | Select inside parameter |
| `gnn` | Init selection | Start incremental selection |
| `grn` | Expand selection | Expand selection to next node |
| `grc` | Expand scope | Expand selection to scope |
| `grm` | Shrink selection | Shrink selection |
| `]m` | Next function start | Go to next function start |
| `]M` | Next function end | Go to next function end |
| `[m` | Previous function start | Go to previous function start |
| `[M` | Previous function end | Go to previous function end |
| `]]` | Next class start | Go to next class start |
| `][` | Next class end | Go to next class end |
| `[[` | Previous class start | Go to previous class start |
| `[]` | Previous class end | Go to previous class end |

### 🚀 LSP (Language Server Protocol)

| Key | Action | Description |
|-----|--------|-------------|
| `gd` | Go to definition | Jump to definition |
| `gr` | Go to references | Show all references |
| `gi` | Go to implementation | Jump to implementation |
| `<C-p>` | Document symbols | Show file symbols |
| `K` | Hover | Show hover information |
| `<leader>ca` | Code actions | Show available actions |
| `<leader>rn` | Rename | Rename symbol |
| `<leader>f` | Format | Format document |

### 🔍 FZF-Lua Commands

| Command | Action | Description |
|---------|--------|-------------|
| `:FzfLua files` | Find files | Search for files |
| `:FzfLua live_grep` | Search in files | Search text in files |
| `:FzfLua buffers` | List buffers | Show open buffers |
| `:FzfLua lsp_references` | LSP references | Show symbol references |
| `:FzfLua lsp_definitions` | LSP definitions | Show symbol definitions |
| `:FzfLua lsp_document_symbols` | LSP symbols | Show file symbols |

## 🛠️ Plugins Overview

### Core Development
- **lsp-zero**: LSP configuration and setup
- **nvim-treesitter**: Syntax highlighting and parsing
- **nvim-cmp**: Autocompletion
- **LuaSnip**: Snippets

### File Management
- **fzf-lua**: Fuzzy finder for files and text
- **nvim-tree**: File explorer
- **bufferline**: Buffer tabs

### UI & Experience
- **lualine**: Status line
- **nvim-devicons**: File icons
- **no-clown-fiesta**: Better colorscheme
- **zen-mode**: Distraction-free editing

### Development Tools
- **gitsigns**: Git integration
- **nvim-surround**: Surround text with delimiters
- **nvim-comment**: Easy commenting
- **toggleterm**: Integrated terminal
- **nvim-tmux-navigation**: Seamless tmux integration

### Debugging
- **nvim-dap**: Debug adapter protocol

### AI Assistance
- **copilot**: GitHub Copilot integration

## ⚙️ Settings

### Editor Behavior
- **Tab size**: 2 spaces
- **Expand tabs**: Yes
- **Smart indent**: Enabled
- **Auto indent**: Enabled
- **Wrap**: Disabled
- **Scroll offset**: 10 lines

### Search
- **Ignore case**: Yes
- **Smart case**: Yes
- **Highlight search**: Yes
- **Incremental search**: Yes

### Visual
- **Line numbers**: Enabled
- **Relative numbers**: Disabled
- **Cursor line**: Enabled
- **Sign column**: Always visible
- **Terminal colors**: Enabled

### System
- **Clipboard**: System clipboard integration
- **Swap files**: Disabled
- **Backup files**: Disabled
- **Update time**: 50ms

## 🎨 Customization

### Adding New Plugins
1. Create a new file in `lua/plugins/`
2. Return a table with plugin configuration
3. Restart Neovim or run `:Lazy sync`

### Modifying Keybindings
Edit `lua/stormis/mappings.lua` to add or modify keybindings.

### Changing Settings
Edit `lua/stormis/settings.lua` to modify Neovim options.

## 🔧 Troubleshooting

### Plugin Issues
```vim
:Lazy sync    " Sync all plugins
:Lazy clean   " Remove unused plugins
:Lazy log     " View plugin logs
```

### LSP Issues
```vim
:LspInfo      " Check LSP status
:LspLog       " View LSP logs
:Mason        " Manage LSP servers
```

### Performance Issues
```vim
:checkhealth  " Run health checks
:profile      " Profile startup time
```

## 📚 Useful Commands

### Buffer Management
```vim
:ls           " List buffers
:bd           " Delete buffer
:bd!          " Force delete buffer
:bufdo bd     " Delete all buffers
```

### Window Management
```vim
:sp           " Split horizontally
:vs           " Split vertically
:close        " Close window
:only         " Close other windows
```

### File Operations
```vim
:e .          " Open file explorer
:find <file>  " Find file in path
:saveas <file> " Save as new file
```

### Search & Replace
```vim
:%s/old/new/g " Replace all occurrences
:%s/old/new/gc " Replace with confirmation
:g/pattern/d  " Delete lines matching pattern
:v/pattern/d  " Delete lines not matching pattern
```

## 🎯 Tips & Tricks

1. **Quick file switching**: Use `<leader>1-9` to jump to specific buffers
2. **Search efficiency**: Use `<leader>f` for project-wide search
3. **Window resizing**: Use arrow keys to resize windows quickly
4. **Zen mode**: Use `<leader>=` for distraction-free coding
5. **Terminal integration**: `<C-Enter>` opens a floating terminal
6. **Tmux integration**: `<C-h/j/k/l>` works seamlessly with tmux

## 🔄 Updates

To update your configuration:
```bash
cd ~/.config/nvim
git pull
nvim  # Plugins will auto-update
```

---

**Happy coding! 🚀**

