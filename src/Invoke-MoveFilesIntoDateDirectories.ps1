[string] $thisScriptsDirectory = $PSScriptRoot
[string] $scriptFilePath = Join-Path -Path $thisScriptsDirectory -ChildPath 'MoveFilesIntoDateDirectories.ps1'

# Specify the parameters to call the cmdlet with.
[hashtable] $scriptParameters = @{
	SourceDirectoryPath = 'C:\Users\alexo\Desktop\New'
	SourceDirectoryDepthToSearch = 0
	TargetDirectoryPath = 'C:\Users\alexo\Desktop\New'
	TargetDirectoriesDateScope = 'Month'	# Hour, Day, Month, or Year
	Force = $false
    Rename = $true
}

# Run the cmdlet using the specified parameters.
& $scriptFilePath @scriptParameters
