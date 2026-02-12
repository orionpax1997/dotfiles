# AGENTS.md - Dotfiles 代码库指南

## 项目概述

这是一个跨平台的 dotfiles 配置仓库，包含 macOS 和 Windows 的开发环境配置。

### 目录结构

```
dotfiles/
├── mac/                    # macOS 配置
│   ├── nvim/               # Neovim 配置 (主要配置)
│   │   ├── init.lua        # 入口文件
│   │   ├── lua/
│   │   │   ├── options.lua      # 编辑器选项
│   │   │   ├── keymaps.lua      # 键位映射
│   │   │   ├── autocommands.lua # 自动命令
│   │   │   ├── lazy-bootstrap.lua # 插件管理器引导
│   │   │   └── plugins/         # 插件配置目录
│   │   └── .stylua.toml    # Lua 格式化配置
│   ├── .hammerspoon/       # Hammerspoon 窗口管理
│   ├── fish/               # Fish shell 配置
│   ├── lf/                 # lf 文件管理器配置
│   └── starship.toml       # Starship 提示符配置
└── win/                    # Windows 配置
    └── .wezterm.lua        # WezTerm 终端配置
```

## 构建/格式化命令

### Lua 格式化 (Neovim 配置)

```powershell
# 格式化单个文件
stylua mac/nvim/lua/plugins/lsp.lua

# 格式化整个 nvim 目录
stylua mac/nvim/

# 检查格式问题（不修改）
stylua --check mac/nvim/
```

### Neovim 健康检查

```vim
:checkhealth
:Lazy          # 检查插件状态
:Mason         # 检查 LSP/工具安装状态
```

### 无测试框架

这是配置仓库，没有自动化测试。修改后通过实际使用验证配置是否正常工作。

## 代码风格指南

### Lua 格式化规则 (.stylua.toml)

```toml
column_width = 160          # 行宽限制
line_endings = "Unix"       # Unix 换行符
indent_type = "Spaces"      # 使用空格缩进
indent_width = 2            # 2 空格缩进
quote_style = "AutoPreferSingle"  # 优先使用单引号
call_parentheses = "None"   # 函数调用不强制括号
```

### 文件结构规范

#### Neovim 插件文件模板

```lua
-- 插件功能的中文描述
return {
  'author/plugin-name',
  dependencies = {
    'dependency/plugin',
  },
  config = function()
    -- 配置逻辑
  end,
}

-- vim: ts=2 sts=2 sw=2 et
```

#### 关键规则

1. **每个文件必须以 modeline 结尾**：`-- vim: ts=2 sts=2 sw=2 et`
2. **插件文件返回单个 table**：lazy.nvim 要求每个插件文件返回配置表
3. **使用单引号**：`require 'module'` 而非 `require("module")`
4. **无括号调用**：简单参数时省略括号，如 `require 'options'`

### 注释规范

```lua
-- 单行注释使用中文

-- [[ 区块标题 ]]
-- 使用双方括号标记重要区块

-- NOTE: 重要说明
-- WARN: 警告信息
-- TODO: 待办事项

--- 函数文档注释
---@param name string 参数描述
---@return boolean 返回值描述
local function example(name)
  -- 实现
end
```

### 命名规范

```lua
-- 局部变量：小写下划线
local my_variable = 'value'

-- 常量：大写下划线
local MY_CONSTANT = 42

-- 函数：小写下划线
local function my_function()
end

-- 键位映射 desc：使用 [X]xxx [Y]yyy 格式标记快捷键
vim.keymap.set('n', '<leader>sf', func, { desc = '[S]earch [F]iles' })
```

### require 语句规范

```lua
-- 核心模块：直接 require
require 'options'
require 'keymaps'

-- 外部插件：使用完整路径
local telescope = require 'telescope.builtin'
local cmp = require 'cmp'

-- 条件加载：使用 pcall
pcall(require('telescope').load_extension, 'fzf')
```

### 键位映射规范

```lua
-- 标准格式
vim.keymap.set('n', '<leader>xx', function()
  -- 逻辑
end, { desc = '描述信息' })

-- LSP 相关映射使用 buffer 选项
vim.keymap.set('n', 'gd', func, { buffer = event.buf, desc = 'LSP: [G]oto [D]efinition' })

-- 禁止使用的箭头键提示
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
```

### 自动命令规范

```lua
vim.api.nvim_create_autocmd('EventName', {
  desc = '英文描述',  -- 描述使用英文
  group = vim.api.nvim_create_augroup('group-name', { clear = true }),
  callback = function(event)
    -- 处理逻辑
  end,
})
```

## Hammerspoon 代码风格

```lua
-- 使用 Tab 缩进（与 Neovim 不同）
hs.loadSpoon("SpoonName")

-- 模态快捷键定义格式
cmodal:bind('', 'F', '中文描述', function()
  spoon.WinWin:stash()
  spoon.WinWin:moveAndResize("fullscreen")
end)

-- 主快捷键绑定
spoon.ModalMgr.supervisor:bind({"alt"}, "L", "Enter FastLayout Environment", function()
  spoon.ModalMgr:deactivateAll()
  spoon.ModalMgr:activate({"FastLayout"})
end)
```

## WezTerm 代码风格

```lua
local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- 使用 Tab 缩进
config.color_scheme = "Tokyo Night"
config.default_prog = { "D:/scoop/apps/powershell/current/pwsh.exe" }

return config
```

## 常见修改场景

### 添加新的 Neovim 插件

1. 在 `mac/nvim/lua/plugins/` 创建新文件，如 `my-plugin.lua`
2. 按照插件模板格式编写配置
3. 重启 Neovim 或运行 `:Lazy sync`

### 添加新的 LSP 服务器

编辑 `mac/nvim/lua/plugins/lsp.lua`，在 `servers` 表中添加：

```lua
local servers = {
  lua_ls = { ... },
  -- 添加新服务器
  pyright = {},
}
```

### 修改键位映射

- 全局键位：编辑 `mac/nvim/lua/keymaps.lua`
- 插件相关：在对应插件配置文件中修改

## 禁止事项

1. **不要删除 modeline**：每个 Lua 文件末尾的 `-- vim: ts=2 sts=2 sw=2 et`
2. **不要混用 Tab 和空格**：Neovim 配置统一用 2 空格
3. **不要硬编码绝对路径**：使用 `vim.fn.stdpath` 获取路径
4. **不要忽略 stylua 格式化**：提交前确保代码格式正确
5. **不要在插件文件中定义全局变量**：使用 local

## 调试技巧

```vim
" 查看加载的插件
:Lazy

" 检查 LSP 状态
:LspInfo

" 查看键位映射
:verbose map <leader>sf

" 查看选项值
:set option?

" 重新加载配置（部分生效）
:source $MYVIMRC
```

## 平台差异

| 配置项 | macOS | Windows |
|--------|-------|---------|
| Neovim | mac/nvim/ | 符号链接到 mac/nvim/ |
| Shell | Fish + Starship | PowerShell |
| 终端 | iTerm2 | WezTerm |
| 窗口管理 | Hammerspoon | - |
