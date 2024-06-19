/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"' >> ~/.zshrc

source ~/.zshrc


brew install --cask powershell
brew install --cask dotnet-sdk


Install-Module -Name PnP.PowerShell -Scope CurrentUser
Import-Module PnP.PowerShell

# Test connection to SharePoint
Connect-PnPOnline -Url https://yourtenant.sharepoint.com -Interactive
Get-PnPList

## Detta till configen för att pwsh ska kunna köras i vs code
# {
#     "powershell.powerShellAdditionalExePaths": {
#         "Powershell": "/opt/homebrew/Cellar/powershell/7.4.2/libexec/pwsh"
#     }
# }


