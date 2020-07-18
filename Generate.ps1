param([string]$ProjectTemplateRoot)
$SINK_NAME = Read-Host -Prompt 'Enter sink name'
$AUTHOR_NAME = Read-Host -Prompt 'Enter author name'
$NUGET_NAME = Read-Host -Prompt 'Enter serilog nuget name'
$NUGET_VERSION = Read-Host -Prompt 'Enter serilog nuget version'

$MODULE_ID = New-Guid

$ProjectRoot = "$(Split-Path $ProjectTemplateRoot -Parent)\PoShLog.Sinks.$SINK_NAME"
Copy-Item "$ProjectTemplateRoot\src" -Destination "$ProjectRoot\src" -Recurse -Force
Copy-Item "$ProjectTemplateRoot\.gitattributes" -Destination $ProjectRoot -Recurse -Force
Copy-Item "$ProjectTemplateRoot\.gitignore" -Destination $ProjectRoot -Recurse -Force
Copy-Item "$ProjectTemplateRoot\LICENSE" -Destination $ProjectRoot -Recurse -Force
Copy-Item "$ProjectTemplateRoot\README_TEMPLATE.md" -Destination $ProjectRoot -Recurse -Force
Rename-Item "$ProjectRoot\README_TEMPLATE.md" -NewName "$ProjectRoot\README.md" 

$allFiles = Get-ChildItem -Path $ProjectRoot -Recurse | Where-Object { -not $_.PSIsContainer -and $_.Name -ne 'Generate.ps1' }
foreach($file in $allFiles){

	$lines = Get-Content -Path $file.FullName
	$lines = $lines | Foreach-Object {
		$_ -replace 'SINK_NAME', $SINK_NAME.Trim() `
			-replace 'AUTHOR_NAME', $AUTHOR_NAME.Trim() `
			-replace 'NUGET_NAME', $NUGET_NAME.Trim() `
			-replace 'NUGET_VERSION', $NUGET_VERSION.Trim() `
			-replace 'MODULE_ID', $MODULE_ID
	}

	Set-Content $file.FullName -Value $lines

	if($file.Name -like '*SINK_NAME*'){
		$newName = $file.FullName -replace 'SINK_NAME', $SINK_NAME
		Rename-Item -Path $file.FullName -NewName $newName
	}
}