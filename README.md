# Dotfiles

跨平台的开发环境配置，包含 macOS 和 Windows 的个人配置文件及常用应用清单。

## 目录结构

```
dotfiles/
├── mac/                    # macOS 配置
│   ├── nvim/               # Neovim 配置
│   ├── .hammerspoon/       # Hammerspoon 窗口管理
│   ├── fish/               # Fish shell 配置
│   ├── lf/                 # lf 文件管理器
│   └── starship.toml       # Starship 提示符
└── win/                    # Windows 配置
    └── .wezterm.lua        # WezTerm 终端
```

---

## 应用清单

### 🧑‍💻 开发工具

- [Visual Studio Code](https://code.visualstudio.com/) - 轻量级代码编辑器，插件生态丰富，支持几乎所有编程语言，内置 Git、调试器和终端。 🪟 🍎 🐧
- [IntelliJ IDEA Ultimate](https://www.jetbrains.com/idea/) - JetBrains 出品的 Java/Kotlin IDE，提供强大的代码补全、重构、调试和企业级框架支持。 🪟 🍎 🐧
- [DataGrip](https://www.jetbrains.com/datagrip/) - 专业数据库 IDE，支持主流关系型数据库和智能 SQL 编辑。 🪟 🍎 🐧
- [Fork](https://git-fork.com/) - Git 图形客户端，提供直观的分支视图和强大的 rebase / 冲突解决能力。 🪟 🍎
- [Bruno](https://www.usebruno.com/) - 开源 API 调试工具，Postman 替代品，请求以纯文本形式存储，便于版本控制。 🪟 🍎 🐧
- [PDManer](https://gitee.com/robergroup/pdmaner) - 开源数据库建模工具，支持正向 / 逆向工程和文档生成。 🪟 🍎 🐧
- [OpenCode](https://opencode.ai/) - 开源 AI 编程代理，支持终端、IDE 和桌面应用，可连接多种 LLM 提供商。 🪟 🍎 🐧
- [Oh-My-OpenCode](https://github.com/code-yeongyu/oh-my-opencode) - 最佳 Agent 框架，提供包含 Sisyphus 在内的 10 个专业化 AI 代理。 🪟 🍎 🐧

### ⌨️ 命令行 & 终端

- [Scoop](https://scoop.sh/) - 适用于 Windows 的命令行软件安装和管理器。 🪟
- [Homebrew](https://brew.sh/) - macOS 和 Linux 的包管理器，简化软件安装和管理。 🍎 🐧
- [Git](https://git-scm.com/) - 分布式版本控制系统，用于代码协作和版本历史管理。 🪟 🍎 🐧
- [Alacritty](https://alacritty.org/) - GPU 加速的终端模拟器，快速且内存占用低。 🪟 🍎 🐧
- [Neovim](https://neovim.io/) - 现代化 Vim 编辑器，内置 LSP 支持、异步操作和高度可定制能力。 🪟 🍎 🐧
- [zoxide](https://github.com/ajeetdsouza/zoxide/) - 更智能的 cd 工具，支持目录历史和模糊跳转。 🪟 🍎 🐧
- [nvm](https://github.com/nvm-sh/nvm) - Node.js 版本管理器，用于多版本 Node 环境切换。 🪟 🍎 🐧

### 🎨 界面美化

- [Starship](https://starship.rs/) - 跨平台、快速、可定制的 shell 提示符。 🪟 🍎 🐧
- [TranslucentTB](https://github.com/TranslucentTB/TranslucentTB) - Windows 任务栏美化工具，支持透明和模糊效果。 🪟
- [TrafficMonitor](https://github.com/zhongyang219/TrafficMonitor) - 任务栏系统状态监控工具，显示网速和资源占用。 🪟

### 📦 其他工具

- [clash-party](https://clashparty.org/) - Clash 图形客户端，支持规则系统、多核心和订阅管理。 🪟 🍎 🐧
- [PowerToys](https://github.com/microsoft/PowerToys) - Windows 官方效率工具集，包含窗口管理、快捷键、批量重命名等功能。 🪟
- [Bandizip](https://www.bandisoft.com/bandizip/) - 轻量快速的压缩 / 解压工具。 🪟 🍎
- [Buttercup](https://buttercup.pw/) - 开源密码管理器，支持 AES-256 加密。 🪟 🍎 🐧
- [Thunderbird](https://www.thunderbird.net/) - 开源邮件客户端，支持多账户和 PGP 加密。 🪟 🍎 🐧
- [Element](https://element.io/) - 基于 Matrix 协议的去中心化通讯客户端。 🪟 🍎 🐧
- [Foxit PDF Reader](https://www.foxit.com/) - 轻量快速的 PDF 阅读器。 🪟 🍎 🐧
- [剪映](https://www.capcut.cn/) - 视频剪辑软件，适合内容创作和简单后期。 🪟 🍎
- [WizTree](https://diskanalyzer.com/) - 极速磁盘空间分析工具，用于定位大文件。 🪟
- [WindTerm](https://github.com/kingToolbox/WindTerm) - SSH / Telnet / Serial 客户端，支持会话管理和文件传输。 🪟 🍎 🐧
- [ToDesk](https://www.todesk.com/) - 跨平台远程桌面工具，支持文件传输和屏幕共享。 🪟 🍎 🐧
- [FastStone Capture](https://www.faststone.org/FSCaptureDetail.htm) - 截图与屏幕录制工具，支持滚动截图和标注。 🪟
- [Umi-OCR](https://github.com/hiroi-sora/Umi-OCR) - 开源离线 OCR 工具，支持截图和 PDF 识别。 🪟
- [JD-GUI](https://java-decompiler.github.io/) - Java 反编译工具，用于阅读和分析 class / jar 文件。 🪟 🍎 🐧

---

## 快速开始

### Windows

#### [Scoop](https://scoop.sh/)

打开 PowerShell 终端（版本 5.1 或更高版本）并从 PS C:\> 提示符运行：

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

#### [clash-party](https://clashparty.org/)

```powershell
scoop install clash-party
```

如果 scoop 很慢先去手动下个便携版，临时用一下，scoop 安装了再删掉。

```cmd
# 设置 cmd 代理(用户级别)
setx http_proxy "http://127.0.0.1:7890"
setx https_proxy "http://127.0.0.1:7890"
```

#### [Git](https://git-scm.com/)

```powershell
scoop install git

# 最小配置信息
git config --global user.name 'your_name'
git config --global user.email 'your_email'

# 修改 HTTP 传输请求数据时最大的缓存字节数
git config --global http.postBuffer 524288000

# 配置全局 git 编码 解决中文乱码情况
git config --global gui.encoding utf-8

# 配置代理提高 git 速度
git config --global http.proxy http://127.0.0.1:7890
git config --global https.proxy http://127.0.0.1:7890

# 常用git log 命令 设置别名
# 查看自己的提交(简洁描述)
git config --global alias.lm  "log --no-merges --color --date=format:'%Y-%m-%d %H:%M:%S' --author='your_name' --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Cblue %s %Cgreen(%cd) %C(bold blue)<%an>%Creset' --abbrev-commit"
# 查看自己的提交(展示修改的文件概览)
git config --global alias.lms  "log --no-merges --color --stat --date=format:'%Y-%m-%d %H:%M:%S' --author='your_name' --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Cblue %s %Cgreen(%cd) %C(bold blue)<%an>%Creset' --abbrev-commit"
# 查看提交(简洁描述)
git config --global alias.ls "log --no-merges --color --graph --date=format:'%Y-%m-%d %H:%M:%S' --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Cblue %s %Cgreen(%cd) %C(bold blue)<%an>%Creset' --abbrev-commit"
# 查看提交(展示修改的文件概览)
git config --global alias.lss "log --no-merges --color --stat --graph --date=format:'%Y-%m-%d %H:%M:%S' --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Cblue %s %Cgreen(%cd) %C(bold blue)<%an>%Creset' --abbrev-commit"
```

#### [Alacritty](https://alacritty.org/)

```powershell
New-Item -ItemType SymbolicLink -Path "$env:APPDATA\alacritty" -Target "$(Get-Location)\win\alacritty"
```

#### [Neovim](https://neovim.io/)

```powershell
scoop install neovim make unzip gcc ripgrep fd gzip mingw tree-sitter
New-Item -ItemType SymbolicLink -Path "$env:LOCALAPPDATA\nvim" -Target "$(Get-Location)\general\nvim"
```

#### [zoxide](https://github.com/ajeetdsouza/zoxide/)

```powershell
scoop install zoxide fzf
```

#### [Starship](https://starship.rs/)

```powershell
scoop install starship
Copy-Item ".\win\starship.toml" "$HOME\.config\starship.toml" -Force
```

#### [Powershell](https://github.com/PowerShell/PowerShell)

```powershell
Copy-Item ".\win\Microsoft.PowerShell_profile.ps1" "$HOME\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -Force
```

#### [TranslucentTB](https://github.com/TranslucentTB/TranslucentTB)

```powershell
scoop install translucenttb
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run" -Name "TranslucentTB" -Value "C:\Users\Administrator\scoop\apps\translucenttb\current\TranslucentTB.exe"
```

#### [TrafficMonitor](https://github.com/zhongyang219/TrafficMonitor)

```powershell
scoop install trafficmonitor
```

设置开机自启和根据任务栏颜色自动设置背景色。

#### [PowerToys](https://github.com/microsoft/PowerToys)

```powershell
scoop install PowerToys
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run" -Name "PowerToys" -Value "C:\Users\Administrator\scoop\apps\PowerToys\current\PowerToys.exe"
```

实用程序打开：环境变量、速览、图像大小调整器、颜色选取器、FancyZones、PowerToys Runkk

## 许可证

MIT
