# PoShLog.Sinks.Template

This repository is template for PoShLog sink. Use it whenever you want to wrap any [Serilog sink](https://github.com/serilog/serilog/wiki/Provided-Sinks).

## How to

* Choose sink name. It should match Serilog sink name.
* Replace placeholder `SINK_NAME` with your sink name.
* Look for `FILL_HERE` placeholder and replace it with appropriate text.
* Make sure you have placed Serilog sink nuget inside `Dependencies.csproj`

Example `Dependencies.csproj` when wrapping [EventLog sink](https://github.com/serilog/serilog-sinks-eventlog)
[https://www.nuget.org/packages/Serilog.Sinks.EventLog/](https://www.nuget.org/packages/Serilog.Sinks.EventLog/)

```xml
<Project Sdk="Microsoft.NET.Sdk">

  <PropertyGroup>
    <TargetFramework>netstandard2.0</TargetFramework>
  </PropertyGroup>

  <ItemGroup>
    <PackageReference Include="Serilog.Sinks.EventLog" Version="3.1.0" />
  </ItemGroup>

</Project>
```
