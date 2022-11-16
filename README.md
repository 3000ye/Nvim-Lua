# Nvim+Lua的配置

此文档主要为个人备份使用，如有需要请直接发issue联系。

### 使用须知

**环境要求：**

- Neovim --0.7.2
- python --3.x
- pynvim
- clang or gcc/g++
- node --lastest
- npm --lastest

**开箱操作：**

同步插件：

```bash
:PackerSync
```

安装补全解释器：

```bash
:LspInstall clnagd
:LspInstall pyright
:LspInstall marksman
```

安装Markdown预览：

```bash
:call mkdp#util#install()
```

然后退出重进，即可开始使用Neovim！
