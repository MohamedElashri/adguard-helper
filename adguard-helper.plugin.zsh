
# Load completion if available
autoload -U compinit && compinit

# Define commands with more human syntax
# Alias: ag-login
# Usage: Simply type `ag-login` to log in to the VPN service.
# Example:
#   $ ag-login
# This will prompt for username and password, and log in to the AdGuard VPN.
alias ag-login='adguardvpn-cli login'

# Alias: ag-logout
# Usage: Type `ag-logout` to log out from the VPN service.
# Example:
#   $ ag-logout
# Logs you out from AdGuard VPN.
alias ag-logout='adguardvpn-cli logout'

# Alias: ag-list-locations
# Usage: Type `ag-list-locations` to list all available VPN locations.
# Example:
#   $ ag-list-locations
# Displays all locations, including their ping information.
alias ag-list-locations='adguardvpn-cli list-locations'

# Alias: ag-connect
# Usage: Type `ag-connect` to connect to the VPN.
# Example:
#   $ ag-connect
# Connects to the last used location or the default location.
alias ag-connect='adguardvpn-cli connect'

# Alias: ag-disconnect
# Usage: Type `ag-disconnect` to disconnect from the VPN service.
# Example:
#   $ ag-disconnect
# Disconnects the current VPN session.
alias ag-disconnect='adguardvpn-cli disconnect'

# Alias: ag-status
# Usage: Type `ag-status` to see the current status of the VPN.
# Example:
#   $ ag-status
# Shows the connection status, such as whether you are connected and to which server.
alias ag-status='adguardvpn-cli status'

# Alias: ag-license
# Usage: Type `ag-license` to view the license information of the VPN.
# Example:
#   $ ag-license
# Displays your current license and its validity.
alias ag-license='adguardvpn-cli license'

# Alias: ag-config
# Usage: Type `ag-config` to open the configuration settings.
# Example:
#   $ ag-config
# Opens configuration options, which allow you to modify the settings of AdGuard VPN.
alias ag-config='adguardvpn-cli config'

# Alias: ag-check-update
# Usage: Type `ag-check-update` to check for updates.
# Example:
#   $ ag-check-update
# Checks if there is a newer version of the AdGuard VPN available.
alias ag-check-update='adguardvpn-cli check-update'

# Alias: ag-export-logs
# Usage: Type `ag-export-logs` to export the logs of the VPN service.
# Example:
#   $ ag-export-logs -o /tmp/logs.zip
# Exports the logs to the specified output file.
alias ag-export-logs='adguardvpn-cli export-logs'

# Alias: ag-update
# Usage: Type `ag-update` to install the latest version.
# Example:
#   $ ag-update
# Updates the AdGuard VPN to the latest available version.
alias ag-update='adguardvpn-cli update'

# Alias: ag-exclusions
# Usage: Type `ag-exclusions` to manage site exclusions.
# Example:
#   $ ag-exclusions show
# Lists all the currently excluded sites.
alias ag-exclusions='adguardvpn-cli site-exclusions'

# Functions for more natural interaction

# Function: ag-connect-fastest
# Usage: Type `ag-connect-fastest` to connect to the fastest available VPN location.
# Example:
#   $ ag-connect-fastest
# Connects to the location with the lowest ping time.
function ag-connect-fastest() {
  adguardvpn-cli connect --fastest
}

# Function: ag-connect-location
# Usage: Type `ag-connect-location <location>` to connect to a specific location.
# Example:
#   $ ag-connect-location "New York"
# Connects to the specified location, in this case, New York.
function ag-connect-location() {
  local location="$1"
  adguardvpn-cli connect --location "$location"
}

# Function: ag-set-mode
# Usage: Type `ag-set-mode <mode>` to set the VPN mode (TUN/SOCKS).
# Example:
#   $ ag-set-mode TUN
# Sets the VPN to TUN mode.
function ag-set-mode() {
  local mode="$1"
  adguardvpn-cli config set-mode "$mode"
}

# Function: ag-set-dns
# Usage: Type `ag-set-dns <dns>` to set the DNS server.
# Example:
#   $ ag-set-dns "1.1.1.1"
# Sets the DNS server to 1.1.1.1.
function ag-set-dns() {
  local dns="$1"
  adguardvpn-cli config set-dns "$dns"
}

# Function: ag-add-exclusion
# Usage: Type `ag-add-exclusion <site>` to add a site to exclusions.
# Example:
#   $ ag-add-exclusion "example.com"
# Adds example.com to the exclusion list.
function ag-add-exclusion() {
  local site="$1"
  adguardvpn-cli site-exclusions add "$site"
}

# Function: ag-remove-exclusion
# Usage: Type `ag-remove-exclusion <site>` to remove a site from exclusions.
# Example:
#   $ ag-remove-exclusion "example.com"
# Removes example.com from the exclusion list.
function ag-remove-exclusion() {
  local site="$1"
  adguardvpn-cli site-exclusions remove "$site"
}

# Function: ag-show-exclusions
# Usage: Type `ag-show-exclusions` to display all excluded sites.
# Example:
#   $ ag-show-exclusions
# Shows all the sites currently in the exclusion list.
function ag-show-exclusions() {
  adguardvpn-cli site-exclusions show
}

# Function: ag-clear-exclusions
# Usage: Type `ag-clear-exclusions` to clear all exclusions.
# Example:
#   $ ag-clear-exclusions
# Clears all the sites from the exclusion list.
function ag-clear-exclusions() {
  adguardvpn-cli site-exclusions clear
}

# Additional helpers

# Function: ag-setup-tun
# Usage: Type `ag-setup-tun` to configure the VPN to use the default TUN routing mode.
# Example:
#   $ ag-setup-tun
# Configures the VPN to use AUTO TUN routing mode.
function ag-setup-tun() {
  adguardvpn-cli config set-tun-routing-mode AUTO
}

# Function: ag-set-socks-port
# Usage: Type `ag-set-socks-port <port>` to set the SOCKS port.
# Example:
#   $ ag-set-socks-port 1080
# Sets the SOCKS proxy port to 1080.
function ag-set-socks-port() {
  local port="$1"
  adguardvpn-cli config set-socks-port "$port"
}

# Function: ag-show-config
# Usage: Type `ag-show-config` to display the current VPN configuration.
# Example:
#   $ ag-show-config
# Displays all the configuration settings of AdGuard VPN.
function ag-show-config() {
  adguardvpn-cli config show
}

# Tab completion for human-friendly commands
# Adds completion to the aliases and functions defined above.
compdef '_arguments "1: :->subcommand"' ag-login ag-logout ag-list-locations ag-connect ag-disconnect ag-status ag-license ag-config ag-check-update ag-export-logs ag-update ag-exclusions ag-connect-fastest ag-connect-location ag-set-mode ag-set-dns ag-add-exclusion ag-remove-exclusion ag-show-exclusions ag-clear-exclusions ag-setup-tun ag-set-socks-port ag-show-config

# Custom completion for connect-location
# Provides dynamic tab completion for ag-connect-location using available VPN locations.
function _ag_connect_location() {
  local locations=($(adguardvpn-cli list-locations --bash-completion))
  compadd "${locations[@]}"
}
compdef _ag_connect_location ag-connect-location
