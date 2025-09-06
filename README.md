# 🔍 gh-zizmor

> A GitHub CLI extension for static analysis of your GitHub Actions workflows

[![GitHub release (latest by date)](https://img.shields.io/github/v/release/luxass/gh-zizmor)](https://github.com/luxass/gh-zizmor/releases/latest)
[![License](https://img.shields.io/github/license/luxass/gh-zizmor)](LICENSE)

**gh-zizmor** is a GitHub CLI extension that provides an easy way to run [zizmor](https://github.com/woodruffw/zizmor) - a powerful static analysis tool for GitHub Actions workflows - directly from your terminal with automatic GitHub token management.

## ✨ Features

- 🔒 **Automatic token handling** - Seamlessly integrates with `gh auth` for GitHub API access
- 🎯 **Smart defaults** - Analyzes `.github/workflows` by default when no path is specified  
- 🚀 **Zero configuration** - Works out of the box with your existing GitHub CLI setup
- 🛡️ **Security focused** - Identifies potential security issues in your GitHub workflows
- 📊 **Comprehensive analysis** - Leverages zizmor's powerful static analysis capabilities

## 📦 Installation

### Prerequisites

1. **GitHub CLI** - Install from [cli.github.com](https://cli.github.com)
2. **Zizmor** - Install the core analysis tool from [docs.zizmor.sh/installation](https://docs.zizmor.sh/installation/)

### Install the extension

```bash
gh extension install luxass/gh-zizmor
```

<details>
<summary>💡 Manual installation</summary>

> If you want to install this extension **manually**, follow these steps:

1. Clone the repo

   ```shell
   # git
   git clone https://github.com/luxass/gh-zizmor
   ```

   ```shell
   # GitHub CLI
   gh repo clone luxass/gh-zizmor
   ```

2. Cd into it

   ```bash
   cd gh-zizmor
   ```

3. Install it locally
   ```bash
   gh extension install .
   ```
</details>

<details>
<summary>🔄 Updating</summary>

```bash
gh extension upgrade zizmor
```
</details>

## 🚀 Usage

### Basic usage

```bash
# Analyze workflows in the default directory (.github/workflows)
gh zizmor

# Analyze a specific directory
gh zizmor path/to/workflows

# Analyze specific workflow files
gh zizmor .github/workflows/ci.yml .github/workflows/release.yml
```

### Advanced usage

```bash
# Pass additional flags to zizmor
gh zizmor --format json --output report.json

# Get help
gh zizmor --help
```

> **💡 Tip:** The extension automatically handles GitHub token authentication, so you don't need to worry about setting up API access manually.

## ⚙️ How it works

**gh-zizmor** is a lightweight wrapper that:

1. Checks if you're authenticated with GitHub CLI
2. Retrieves your GitHub token automatically  
3. Passes it to zizmor along with your specified arguments
4. Handles common edge cases and provides helpful error messages

## 🔧 Under the hood

This extension is powered by:
- [zizmor](https://github.com/woodruffw/zizmor) - The core static analysis engine
- [GitHub CLI](https://cli.github.com) - For authentication and GitHub integration

## 📄 License

MIT License - see [LICENSE](LICENSE) for details.