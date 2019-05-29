# Install nodejs and yarn via Chocolatey.
choco install nodejs yarn

# Add PATH modifications to the Powershell profile. This is the win equivalent of .bash_profile.
# https://docs.microsoft.com/en-us/previous-versions//bb613488(v=vs.85)
new-item -path $profile -itemtype file -force
# Paths for nodejs and yarn. Use single quotes to prevent interpolation.
Add-Content $profile '$Env:path += ";C:\Program Files\nodejs\;C:\Program Files (x86)\Yarn\bin\;"'
