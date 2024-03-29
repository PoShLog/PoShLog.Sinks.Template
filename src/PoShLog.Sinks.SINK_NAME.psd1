#
# Module manifest for module 'PoShLog.Sinks.Seq'
#
# Generated by: Tomas Bouda
#
# Generated on: 07.06.2020
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'PoShLog.Sinks.SINK_NAME.psm1'

# Version number of this module.
ModuleVersion = '1.0.0'

# Supported PSEditions
CompatiblePSEditions = 'Desktop', 'Core'

# ID used to uniquely identify this module
GUID = 'MODULE_ID'

# Author of this module
Author = 'AUTHOR_NAME'

# Company or vendor of this module
CompanyName = 'AUTHOR_NAME'

# Copyright statement for this module
Copyright = '(c) 2019 AUTHOR_NAME. All rights reserved.'

# Description of the functionality provided by this module
Description = 'PoShLog.Sinks.SINK_NAME is extension module for PoShLog core library - https://www.powershellgallery.com/packages/PoShLog.
It contains sink that publishes log messages to TODO

For documentation check PoShLog wiki - https://github.com/PoShLog/PoShLog/wiki'

# Minimum version of the PowerShell engine required by this module
PowerShellVersion = '5.1'

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# ClrVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @(@{ModuleName = 'PoShLog'; GUID = '6eabf344-4f00-4cc0-95d4-d3bef503e165'; ModuleVersion = '2.0.0'; })

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = '*'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = '*'

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'Log','Logging','Serilog','File','filelog','logfile','error-log','console','event','serilog-sink','serilog-for-powershell','wrapper','sinks','PSEdition_Desktop','PSEdition_Core','Windows','Linux','MacOS'

        # A URL to the license for this module. e.g. https://github.com/PoShLog/PoShLog.Sinks.Seq/blob/master/LICENSE
        LicenseUri = ''

        # A URL to the main website for this project. e.g. https://github.com/PoShLog/PoShLog.Sinks.Seq
        ProjectUri = ''

        # A URL to an icon representing this module.
        IconUri = 'https://raw.githubusercontent.com/PoShLog/PoShLog/master/images/icons/poshlog-icon-sink-256.png'

        # ReleaseNotes of this module
        ReleaseNotes = 'Init'

        # Prerelease string of this module e.g. Prerelease = 'preview1'
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
        # RequireLicenseAcceptance = $false

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable

 } # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

