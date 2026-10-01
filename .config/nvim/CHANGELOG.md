# Changelog

All notable changes to this Neovim configuration will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/). Dates are recorded in ISO 8601 format (`YYYY-MM-DD`).

## [2026-10-02]

### Added
- **`AGENTS.md`**: Created a dedicated guide for AI coding agents and contributors outlining:
  - Repository structure, architecture, and module breakdown.
  - Core conventions (use of `coc.nvim` over native LSP, blackhole register delete behavior, leader key `<Space>`).
  - Safe mapping practices when using `vimpeccable` (`vimp`).
  - Standard instructions for adding, removing, and testing plugins headlessly.

### Fixed
- **Startup "Press any key to continue" prompt**:
  - **Problem**: Modern Neovim versions define default built-in mappings for `<C-s>` in insert mode (`vim.lsp.buf.signature_help()`) and `[b` / `]b` in normal mode (`:bprevious` / `:bnext`). `vimpeccable` (`vimp`) creates mappings with `unique = true` by default, triggering `E227: Mapping already exists` during startup and printing unhandled errors into the message buffer, which paused Neovim with a prompt.
  - **Resolution**:
    - Enabled `vimp.always_override = true` in `lua/core/general.lua` to permit redefining pre-existing or default Neovim mappings across the config.
    - Added the `{'override'}` option flag to `vimp.imap('<C-s>', '<C-o>:w<CR>')` in `lua/core/bindings.lua`.
    - Added the `'override'` option flag to `[b` and `]b` buffer-cycling mappings in `lua/plugins/bufferline.lua`.
