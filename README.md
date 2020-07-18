# PoShLog.Sinks.Template

This repository is template for PoShLog sink. Use it whenever you want to wrap any [Serilog sink](https://github.com/serilog/serilog/wiki/Provided-Sinks).

## Generating new sink module

* Run `Generate.ps1 -ProjectTemplateRoot 'Path to template repository'`
* Enter all information, `Generate.ps1` script asks for
* New directory with name PoShLog.Sinks.YOUR_SINK_NAME will be created in Template repository parent directory
* Now all you need to do is to write the sink code in `\PoShLog.Sinks.YOUR_SINK_NAME\src\functions\sinks\Add-SinkYOUR_SINK_NAME.ps1`
* Finally check module manifest `\PoShLog.Sinks.YOUR_SINK_NAME\src\PoShLog.Sinks.YOUR_SINK_NAME.psd1` and `\PoShLog.Sinks.YOUR_SINK_NAME\README.md` for `TODO` placeholders

## Building the module

* Install [`Invoke-Build`](https://github.com/nightroman/Invoke-Build) module: `Install-Module InvokeBuild`
* Run `Invoke-Build . \PoShLog.Sinks.YOUR_SINK_NAME\src\PoShLog.Sinks.YOUR_SINK_NAME.Build.ps1 -ModuleVersion 1.0.0 -ReleaseNotes 'Init'`, this will create module prepared for publish in `.\output` directory

## Publishing module

* Set your powershellgallery API key in `$env:psgalleryapikey` environment variable.
* Run `Invoke-Build . \PoShLog.Sinks.YOUR_SINK_NAME\src\PoShLog.Sinks.YOUR_SINK_NAME.Build.ps1 -ModuleVersion 1.0.0 -ReleaseNotes 'Init' -Configuration Prod`, this will publish module in powershellgallery.
