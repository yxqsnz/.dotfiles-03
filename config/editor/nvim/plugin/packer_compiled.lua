-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/yxqsnz/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/yxqsnz/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/yxqsnz/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/yxqsnz/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/yxqsnz/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/start/FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["clangd_extensions.nvim"] = {
    config = { "\27LJ\2\nÇ\6\0\0\6\0\21\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0025\3\5\0005\4\6\0=\4\a\0035\4\t\0005\5\b\0=\5\n\0045\5\v\0=\5\f\0045\5\r\0=\5\14\4=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\3=\3\20\2B\0\2\1K\0\1\0\15extensions\16symbol_info\1\0\1\vborder\tnone\17memory_usage\1\0\1\vborder\tnone\bast\15highlights\1\0\1\vdetail\fComment\15kind_icons\1\0\a\18PackExpansion\tüÑø\21TemplateTypeParm\tüÖÉ\20TranslationUnit\tüÖÑ\24TemplateParamObject\tüÖÉ\rRecovery\tüÖÅ\25TemplateTemplateParm\tüÖÉ\rCompound\tüÑ≤\15role_icons\1\0\0\1\0\6\ttype\tüÑ£\16declaration\tüÑì\22template argument\tüÜÉ\14specifier\tüÑ¢\14statement\6;\15expression\tüÑî\16inlay_hints\1\0\v\26max_len_align_padding\3\1\18max_len_align\1\23other_hints_prefix\5\27parameter_hints_prefix\5\25show_parameter_hints\2\rpriority\3d\30only_current_line_autocmd\15CursorHold\22only_current_line\1\14highlight\fComment\24right_align_padding\3\a\16right_align\2\1\0\1\17autoSetHints\2\vserver\1\0\0\nsetup\22clangd_extensions\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/opt/clangd_extensions.nvim",
    url = "https://github.com/p00f/clangd_extensions.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["document-color.nvim"] = {
    loaded = true,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/start/document-color.nvim",
    url = "https://github.com/mrshmllow/document-color.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nw\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\25show_current_context\2\31show_current_context_start\1\nsetup\21indent_blankline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp-format.nvim"] = {
    loaded = true,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/start/lsp-format.nvim",
    url = "https://github.com/lukas-reineke/lsp-format.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\nô\1\0\0\4\0\b\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\0\0'\2\6\0B\0\2\0029\0\2\0005\2\a\0B\0\2\1K\0\1\0\1\0\1\tmode\15foreground\19document-color\fautocmd\1\0\0\1\0\1\fenabled\2\nsetup\19nvim-lightbulb\frequire\0" },
    loaded = true,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\flualine\frequire\0" },
    load_after = {
      ["noice.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    config = { "\27LJ\2\nW\0\0\3\0\4\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\20mason-lspconfig\nsetup\nmason\frequire\0" },
    loaded = true,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["noice.nvim"] = {
    after = { "telescope.nvim", "lualine.nvim" },
    config = { "\27LJ\2\n'\2\1\5\1\1\0\a\6\0\0\0X\1\4Ä-\1\0\0\18\3\0\0G\4\1\0A\1\1\1K\0\1\0\0¿\6<[\1\0\3\0\6\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0009\0\4\0006\1\3\0003\2\5\0=\2\4\0012\0\0ÄK\0\1\0\0\vnotify\bvim\nsetup\nnoice\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/opt/noice.nvim",
    url = "https://github.com/folke/noice.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\n≈\2\0\0\f\0\17\0,6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\3\0B\1\2\0024\2\0\0006\3\4\0009\5\5\0B\3\2\4H\6\aÄ6\b\6\0009\b\a\b\18\n\2\0009\v\b\0019\v\t\v8\v\a\vB\b\3\1F\6\3\3R\6˜\1276\3\4\0009\5\n\0B\3\2\4H\6\aÄ6\b\6\0009\b\a\b\18\n\2\0009\v\b\0019\v\v\v8\v\a\vB\b\3\1F\6\3\3R\6˜\1279\3\f\0015\5\r\0=\2\14\0056\6\0\0'\b\15\0B\6\2\0029\6\16\6=\6\16\5B\3\2\1K\0\1\0\14on_attach\15lsp-format\fsources\1\0\0\nsetup\15formatting\15formatters\16diagnostics\rbuiltins\vinsert\ntable\flinters\npairs\fnull-ls\blsp\18user.settings\frequire\0" },
    loaded = true,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n/\0\2\4\1\2\0\b-\2\0\0009\3\0\0018\2\3\2\14\0\2\0X\3\1Ä'\2\1\0=\2\0\1L\1\2\0\2¿\5\tkind-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\0¿\tbody\15lsp_expandö\1\0\1\3\2\4\0\21-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\vÄ-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\1¿\0¿\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\1¿\0¿\tjump\rjumpable\21select_prev_item\fvisible„\4\1\0\r\0)\0F6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0029\3\4\0015\5\n\0005\6\6\0005\a\5\0=\a\a\0063\a\b\0=\a\t\6=\6\v\0055\6\r\0003\a\f\0=\a\14\6=\6\15\0059\6\16\0019\6\17\0069\6\18\0065\b\20\0009\t\16\0019\t\19\t)\v¸ˇB\t\2\2=\t\21\b9\t\16\0019\t\19\t)\v\4\0B\t\2\2=\t\22\b9\t\16\0019\t\23\tB\t\1\2=\t\24\b9\t\16\0019\t\25\t5\v\28\0009\f\26\0019\f\27\f=\f\29\vB\t\2\2=\t\30\b9\t\16\0013\v\31\0005\f \0B\t\3\2=\t!\b9\t\16\0013\v\"\0005\f#\0B\t\3\2=\t$\bB\6\2\2=\6\16\0054\6\4\0005\a%\0>\a\1\0065\a&\0>\a\2\0065\a'\0>\a\3\6=\6(\5B\3\2\0012\0\0ÄK\0\1\0\fsources\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\14<C-Space>\rcomplete\n<C-f>\n<C-d>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\fsnippet\vexpand\1\0\0\0\15formatting\1\0\0\vformat\0\vfields\1\0\0\1\3\0\0\tkind\tabbr\nsetup\24ext.editor.cmp.kind\bcmp\fluasnip\frequire\0" },
    loaded = true,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lightbulb"] = {
    loaded = true,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/start/nvim-lightbulb",
    url = "https://github.com/kosayoda/nvim-lightbulb"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n≤\3\0\0\14\0\21\00076\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\3\0009\3\4\0B\1\2\4H\4\25Ä6\6\0\0'\b\5\0B\6\2\0026\a\6\0006\t\0\0'\n\a\0\18\v\5\0&\n\v\nB\a\3\3\15\0\a\0X\t\aÄ6\t\b\0009\t\t\t'\v\n\0\18\f\6\0\18\r\b\0B\t\4\2\18\6\t\0006\t\0\0'\v\v\0B\t\2\0028\t\5\t9\t\f\t\18\v\6\0B\t\2\1F\4\3\3R\4Â\1275\1\r\0006\2\3\0\18\4\1\0B\2\2\4H\5\fÄ'\a\14\0\18\b\5\0&\a\b\a6\b\b\0009\b\15\b9\b\16\b\18\n\a\0005\v\17\0=\6\18\v=\a\19\v=\a\20\vB\b\3\1F\5\3\3R\5Ú\127K\0\1\0\nnumhl\vtexthl\ttext\1\0\0\16sign_define\afn\19DiagnosticSign\1\0\4\tHint\t‚óè \nError\t‚óè \tInfo\t‚óè \tWarn\t‚óè \nsetup\14lspconfig\nforce\20tbl_deep_extend\bvim\16lsp.server.\npcall\16lsp.handler\fservers\npairs\blsp\18user.settings\frequire\0" },
    loaded = true,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle" },
    config = { "\27LJ\2\nö\3\0\0\a\0\20\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\6\0004\5\3\0005\6\5\0>\6\1\5=\5\a\4=\4\b\3=\3\t\0025\3\n\0005\4\v\0=\4\f\3=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\2B\0\2\1K\0\1\0\ffilters\1\0\1\rdotfiles\2\24update_focused_file\1\0\1\venable\2\16diagnostics\1\0\1\venable\2\rrenderer\nicons\1\0\1\18git_placement\nafter\1\0\2\16group_empty\2\18highlight_git\2\tview\rmappings\tlist\1\0\0\1\0\2\bkey\6u\vaction\vdir_up\1\0\2\tside\tleft\18adaptive_size\2\1\0\2'hijack_unnamed_buffer_when_opening\2\fsort_by\19case_sensitive\nsetup\14nvim-tree\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-ts-autotag", "nvim-ts-context-commentstring", "nvim-treesitter-endwise", "nvim-ts-rainbow" },
    config = { "\27LJ\2\në\3\0\0\t\0\19\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0=\2\t\0015\2\n\0=\2\v\0015\2\f\0=\2\r\0016\2\0\0'\4\14\0B\2\2\0029\2\15\0026\4\16\0009\4\17\4'\6\18\0\18\a\1\0\18\b\0\0B\4\4\0A\2\0\1K\0\1\0\nforce\20tbl_deep_extend\bvim\nsetup\28nvim-treesitter.configs\26context_commentstring\1\0\1\venable\2\fautotag\1\0\1\venable\2\fendwise\1\0\1\venable\2\frainbow\1\0\3\19max_file_lines\3†ç\6\venable\2\18extended_mode\2\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\1\0\1\17sync_install\1\15treesitter\18user.settings\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-endwise"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-endwise",
    url = "https://github.com/RRethy/nvim-treesitter-endwise"
  },
  ["nvim-ts-autotag"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/opt/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/opt/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rust-tools.nvim"] = {
    config = { "\27LJ\2\n„\b\0\0\5\0 \0/5\0\22\0005\1\3\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2=\2\4\0015\2\5\0=\2\6\0015\2\15\0004\3\t\0005\4\a\0>\4\1\0035\4\b\0>\4\2\0035\4\t\0>\4\3\0035\4\n\0>\4\4\0035\4\v\0>\4\5\0035\4\f\0>\4\6\0035\4\r\0>\4\a\0035\4\14\0>\4\b\3=\3\16\2=\2\17\0015\2\18\0005\3\19\0=\3\20\2=\2\21\1=\1\23\0005\1\24\0=\1\25\0005\1\27\0005\2\26\0=\2\28\1=\1\29\0006\1\0\0'\3\30\0B\1\2\0029\1\31\1\18\3\0\0B\1\2\1K\0\1\0\nsetup\15rust-tools\bdap\fadapter\1\0\0\1\0\3\tname\frt_lldb\ttype\15executable\fcommand\16lldb-vscode\vserver\1\0\1\15standalone\2\ntools\1\0\0\16crate_graph\30enabled_graphviz_backends\0017\0\0\bbmp\fcgimage\ncanon\bdot\agv\txdot\fxdot1.2\fxdot1.4\beps\bexr\bfig\agd\bgd2\bgif\bgtk\bico\tcmap\nismap\timap\ncmapx\fimap_np\rcmapx_np\bjpg\tjpeg\bjpe\bjp2\tjson\njson0\rdot_json\14xdot_json\bpdf\bpic\bpct\tpict\nplain\14plain-ext\bpng\bpov\aps\bps2\bpsd\bsgi\bsvg\tsvgz\btga\ttiff\btif\atk\bvml\tvmlz\twbmp\twebp\txlib\bx11\1\0\2\tfull\2\fbackend\bx11\18hover_actions\vborder\1\0\1\15auto_focus\1\1\3\0\0\b‚îÇ\16FloatBorder\1\3\0\0\b‚ï∞\16FloatBorder\1\3\0\0\b‚îÄ\16FloatBorder\1\3\0\0\b‚ïØ\16FloatBorder\1\3\0\0\b‚îÇ\16FloatBorder\1\3\0\0\b‚ïÆ\16FloatBorder\1\3\0\0\b‚îÄ\16FloatBorder\1\3\0\0\b‚ï≠\16FloatBorder\16inlay_hints\1\0\n\26max_len_align_padding\3\1\18max_len_align\1\23other_hints_prefix\5\27parameter_hints_prefix\5\25show_parameter_hints\2\14highlight\fComment\22only_current_line\1\tauto\2\24right_align_padding\3\a\16right_align\2\rexecutor\1\0\1%reload_workspace_from_cargo_toml\2\rtermopen\25rust-tools/executors\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/opt/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["telescope.nvim"] = {
    commands = { "Telescope" },
    config = { "\27LJ\2\nh\0\0\3\0\5\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\4\0004\2\0\0B\0\2\1K\0\1\0\nsetup\nnoice\19load_extension\14telescope\frequire\0" },
    load_after = {
      ["noice.nvim"] = true
    },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  tokyonight = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0!colorscheme tokyonight-night\bcmd\bvim\0" },
    loaded = true,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/start/tokyonight",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/yxqsnz/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
try_loadstring("\27LJ\2\nô\1\0\0\4\0\b\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\0\0'\2\6\0B\0\2\0029\0\2\0005\2\a\0B\0\2\1K\0\1\0\1\0\1\tmode\15foreground\19document-color\fautocmd\1\0\0\1\0\1\fenabled\2\nsetup\19nvim-lightbulb\frequire\0", "config", "lsp_signature.nvim")
time([[Config for lsp_signature.nvim]], false)
-- Config for: tokyonight
time([[Config for tokyonight]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0!colorscheme tokyonight-night\bcmd\bvim\0", "config", "tokyonight")
time([[Config for tokyonight]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n/\0\2\4\1\2\0\b-\2\0\0009\3\0\0018\2\3\2\14\0\2\0X\3\1Ä'\2\1\0=\2\0\1L\1\2\0\2¿\5\tkind-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\0¿\tbody\15lsp_expandö\1\0\1\3\2\4\0\21-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\vÄ-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\1¿\0¿\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\1¿\0¿\tjump\rjumpable\21select_prev_item\fvisible„\4\1\0\r\0)\0F6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0029\3\4\0015\5\n\0005\6\6\0005\a\5\0=\a\a\0063\a\b\0=\a\t\6=\6\v\0055\6\r\0003\a\f\0=\a\14\6=\6\15\0059\6\16\0019\6\17\0069\6\18\0065\b\20\0009\t\16\0019\t\19\t)\v¸ˇB\t\2\2=\t\21\b9\t\16\0019\t\19\t)\v\4\0B\t\2\2=\t\22\b9\t\16\0019\t\23\tB\t\1\2=\t\24\b9\t\16\0019\t\25\t5\v\28\0009\f\26\0019\f\27\f=\f\29\vB\t\2\2=\t\30\b9\t\16\0013\v\31\0005\f \0B\t\3\2=\t!\b9\t\16\0013\v\"\0005\f#\0B\t\3\2=\t$\bB\6\2\2=\6\16\0054\6\4\0005\a%\0>\a\1\0065\a&\0>\a\2\0065\a'\0>\a\3\6=\6(\5B\3\2\0012\0\0ÄK\0\1\0\fsources\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\14<C-Space>\rcomplete\n<C-f>\n<C-d>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\fsnippet\vexpand\1\0\0\0\15formatting\1\0\0\vformat\0\vfields\1\0\0\1\3\0\0\tkind\tabbr\nsetup\24ext.editor.cmp.kind\bcmp\fluasnip\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\nW\0\0\3\0\4\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\20mason-lspconfig\nsetup\nmason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\në\3\0\0\t\0\19\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0=\2\t\0015\2\n\0=\2\v\0015\2\f\0=\2\r\0016\2\0\0'\4\14\0B\2\2\0029\2\15\0026\4\16\0009\4\17\4'\6\18\0\18\a\1\0\18\b\0\0B\4\4\0A\2\0\1K\0\1\0\nforce\20tbl_deep_extend\bvim\nsetup\28nvim-treesitter.configs\26context_commentstring\1\0\1\venable\2\fautotag\1\0\1\venable\2\fendwise\1\0\1\venable\2\frainbow\1\0\3\19max_file_lines\3†ç\6\venable\2\18extended_mode\2\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\1\0\1\17sync_install\1\15treesitter\18user.settings\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n≤\3\0\0\14\0\21\00076\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\3\0009\3\4\0B\1\2\4H\4\25Ä6\6\0\0'\b\5\0B\6\2\0026\a\6\0006\t\0\0'\n\a\0\18\v\5\0&\n\v\nB\a\3\3\15\0\a\0X\t\aÄ6\t\b\0009\t\t\t'\v\n\0\18\f\6\0\18\r\b\0B\t\4\2\18\6\t\0006\t\0\0'\v\v\0B\t\2\0028\t\5\t9\t\f\t\18\v\6\0B\t\2\1F\4\3\3R\4Â\1275\1\r\0006\2\3\0\18\4\1\0B\2\2\4H\5\fÄ'\a\14\0\18\b\5\0&\a\b\a6\b\b\0009\b\15\b9\b\16\b\18\n\a\0005\v\17\0=\6\18\v=\a\19\v=\a\20\vB\b\3\1F\5\3\3R\5Ú\127K\0\1\0\nnumhl\vtexthl\ttext\1\0\0\16sign_define\afn\19DiagnosticSign\1\0\4\tHint\t‚óè \nError\t‚óè \tInfo\t‚óè \tWarn\t‚óè \nsetup\14lspconfig\nforce\20tbl_deep_extend\bvim\16lsp.server.\npcall\16lsp.handler\fservers\npairs\blsp\18user.settings\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\n≈\2\0\0\f\0\17\0,6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\3\0B\1\2\0024\2\0\0006\3\4\0009\5\5\0B\3\2\4H\6\aÄ6\b\6\0009\b\a\b\18\n\2\0009\v\b\0019\v\t\v8\v\a\vB\b\3\1F\6\3\3R\6˜\1276\3\4\0009\5\n\0B\3\2\4H\6\aÄ6\b\6\0009\b\a\b\18\n\2\0009\v\b\0019\v\v\v8\v\a\vB\b\3\1F\6\3\3R\6˜\1279\3\f\0015\5\r\0=\2\14\0056\6\0\0'\b\15\0B\6\2\0029\6\16\6=\6\16\5B\3\2\1K\0\1\0\14on_attach\15lsp-format\fsources\1\0\0\nsetup\15formatting\15formatters\16diagnostics\rbuiltins\vinsert\ntable\flinters\npairs\fnull-ls\blsp\18user.settings\frequire\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-ts-rainbow ]]
vim.cmd [[ packadd nvim-ts-context-commentstring ]]
vim.cmd [[ packadd nvim-ts-autotag ]]
vim.cmd [[ packadd nvim-treesitter-endwise ]]
time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType c ++once lua require("packer.load")({'clangd_extensions.nvim'}, { ft = "c" }, _G.packer_plugins)]]
vim.cmd [[au FileType rust ++once lua require("packer.load")({'rust-tools.nvim'}, { ft = "rust" }, _G.packer_plugins)]]
vim.cmd [[au FileType rs ++once lua require("packer.load")({'rust-tools.nvim'}, { ft = "rs" }, _G.packer_plugins)]]
vim.cmd [[au FileType cpp ++once lua require("packer.load")({'clangd_extensions.nvim'}, { ft = "cpp" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead * ++once lua require("packer.load")({'indent-blankline.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'noice.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufNewFile * ++once lua require("packer.load")({'indent-blankline.nvim'}, { event = "BufNewFile *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
