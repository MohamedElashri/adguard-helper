# AdGuard VPN CLI Zsh Plugin

This is a Zsh plugin for simplifying interaction with the AdGuard VPN CLI. It provides user-friendly commands that reduce the need to remember complex flags and commands by offering a more intuitive interface.

## Features

- Simplified aliases for common AdGuard VPN CLI operations.
- Helper functions to make complex tasks easier.
- Dynamic tab completion for some commands.

## Requirements

This plugin requires the AdGuard VPN CLI tool (`adguardvpncli`) to be installed on your system. You can find the installation instructions and download the tool from the official repository: [AdGuardVPNCLI GitHub Repository](https://github.com/AdguardTeam/AdGuardVPNCLI).

## Installation

### Manual Installation
1. Clone this repository to your desired location:
   ```sh
   git clone https://github.com/MohamedElashri/adguard-helper ~/.adguard-helper
   ```
2. Source the plugin in your `.zshrc` file:
   ```sh
   source ~/.adguard-helper/adguard-helper.zsh
   ```
3. Reload your terminal or run `source ~/.zshrc` to start using the plugin.

### Oh My Zsh Installation
1. Clone the repository into your Oh My Zsh custom plugins directory:
   ```sh
   git clone https://github.com/MohamedElashri/adguard-helper ~/.oh-my-zsh/custom/plugins/adguard-helper
   ```
2. Add `adguard-helper` to the list of plugins in your `.zshrc` file:
   ```sh
   plugins=(... adguard-helper)
   ```
3. Reload your terminal or run `source ~/.zshrc` to start using the plugin.

### Zinit Installation
1. Add the following line to your `.zshrc` file:
   ```sh
   zinit load MohamedElashri/adguard-helper
   ```
2. Reload your terminal or run `source ~/.zshrc` to start using the plugin.

## Available Commands
Below is a list of commands provided by this plugin along with their descriptions:

| Command                   | Description                                      | Example                                  |
|---------------------------|--------------------------------------------------|------------------------------------------|
| `ag-login`                | Log in to the VPN service                        | `$ ag-login`                             |
| `ag-logout`               | Log out from the VPN service                     | `$ ag-logout`                            |
| `ag-list-locations`       | List all available VPN locations                 | `$ ag-list-locations`                    |
| `ag-connect`              | Connect to the VPN service                       | `$ ag-connect`                           |
| `ag-connect-fastest`      | Connect to the fastest available VPN location    | `$ ag-connect-fastest`                   |
| `ag-connect-location`     | Connect to a specific VPN location               | `$ ag-connect-location "New York"`       |
| `ag-disconnect`           | Disconnect from the VPN                          | `$ ag-disconnect`                        |
| `ag-status`               | Display the current VPN connection status        | `$ ag-status`                            |
| `ag-license`              | View license information                         | `$ ag-license`                           |
| `ag-config`               | Open the configuration settings                  | `$ ag-config`                            |
| `ag-check-update`         | Check for available updates                      | `$ ag-check-update`                      |
| `ag-export-logs`          | Export VPN logs                                  | `$ ag-export-logs -o /tmp/logs.zip`      |
| `ag-update`               | Install the latest available version             | `$ ag-update`                            |
| `ag-exclusions`           | Manage site exclusions                           | `$ ag-exclusions show`                   |
| `ag-add-exclusion`        | Add a site to exclusions                         | `$ ag-add-exclusion "example.com"`       |
| `ag-remove-exclusion`     | Remove a site from exclusions                    | `$ ag-remove-exclusion "example.com"`    |
| `ag-show-exclusions`      | Display all excluded sites                       | `$ ag-show-exclusions`                   |
| `ag-clear-exclusions`     | Clear all excluded sites                         | `$ ag-clear-exclusions`                  |
| `ag-set-mode`             | Set the VPN operating mode (TUN/SOCKS)           | `$ ag-set-mode TUN`                      |
| `ag-set-dns`              | Set the DNS server for the VPN                   | `$ ag-set-dns "1.1.1.1"`                 |
| `ag-setup-tun`            | Set up the VPN to use the default TUN routing    | `$ ag-setup-tun`                         |
| `ag-set-socks-port`       | Set the SOCKS proxy port                         | `$ ag-set-socks-port 1080`               |
| `ag-show-config`          | Display the current VPN configuration            | `$ ag-show-config`                       |

## Examples

Here are some examples of using this plugin to simplify AdGuard VPN operations:

- **Connecting to the Fastest VPN Location**:
  ```sh
  ag-connect-fastest
  ```
  This command will automatically connect you to the fastest available VPN location based on ping times.

- **Adding an Exclusion**:
  ```sh
  ag-add-exclusion "example.com"
  ```
  This command adds "example.com" to the list of excluded sites that will bypass the VPN.

- **Setting DNS Server**:
  ```sh
  ag-set-dns "1.1.1.1"
  ```
  This command sets the DNS server used by the VPN to `1.1.1.1`.

- **Configuring VPN Mode**:
  ```sh
  ag-set-mode TUN
  ```
  This command sets the VPN to use `TUN` mode.

## License
This project is licensed under the [GNU General Public License v2.0](LICENSE). You are free to use, modify, and distribute this software under the terms of the GPLv2 license.

## Disclaimer
This is an open-source project and is not officially affiliated with AdGuard. Use it at your own discretion.

