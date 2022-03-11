$py = Read-Host "Install Python? (y/n)"
while("y","n" -notcontains $py )
{
 $py = Read-Host "Please enter your response (y/n)"
}
if($py -eq "y")
{
Write-Host "`nPython`n---------------------"
Write-Host "Downloading Python"
curl.exe 'https://www.python.org/ftp/python/3.10.2/python-3.10.2-amd64.exe' --output python_installer.exe
Write-Host "Installing Python and adding to Path"
Start-Process python_installer.exe -Wait
Write-Host "Using the pip manager to install the jupyter notebook IDE"
pip install notebook
}

$node = Read-Host "Install Node? (y/n)"
while("y","n" -notcontains $node )
{
 $node = Read-Host "Please enter your response (y/n)"
}
if($node -eq "y")
{
Write-Host "`nNode.js`n---------------------"
Write-Host "Downloading Node.js"
curl.exe 'https://nodejs.org/dist/v16.14.0/node-v16.14.0-x64.msi' --output node_installer.msi
Write-Host "Installing Node and adding to Path"
Start-Process node_installer.msi -Wait
}


$net = Read-Host "Install .Net? (y/n)"
while("y","n" -notcontains $net )
{
 $net = Read-Host "Please enter your response (y/n)"
}
if($net -eq "y")
{
Write-Host "`n.Net Core`n---------------------"
Write-Host "Downloading .Net"
curl.exe 'https://download.visualstudio.microsoft.com/download/pr/1eb43f77-61af-40b0-8a5a-6165724dca60/f12aac6d4a907b4d54f5d41317aae0f7/dotnet-sdk-6.0.201-win-x64.exe' --output net_installer.exe
Write-Host "Installing .net and adding to Path"
Start-Process net_installer.exe -Wait
}

Write-Host "`nVisual Studio Code`n---------------------"
Start-Process vs_code.exe -Wait


Write-Host "Opening the IDE"
# Start-Process python -ArgumentList "-m notebook `".\101Base.ipynb`""

