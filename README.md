# HackathonMAUISetup

This project is a .NET MAUI cross-platform app. Follow the instructions below to build and run for your platform.

## Prerequisites

- .NET 9 SDK
- Visual Studio 2022+ (Windows) or Visual Studio for Mac
- MAUI workload installed (`dotnet workload install maui`)

## Quick Start

### Windows

1. Open PowerShell in the repo root.
2. Run:
   ```powershell
   ./run-windows.ps1
   ```
   This will build and run the app for Windows only.

**Note:** If you see a 'not digitally signed' error, run this first to allow unsigned scripts for your session:
If you don't want to do that, you can use the Manual commands in the later section.

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
```

Then run the script as above.

### Mac

1. Open Terminal in the repo root.
2. Run:
   ```sh
   sh run-mac.sh
   ```
   This will build and run the app for MacCatalyst only.

## Customizing Target Frameworks

- By default, scripts update the project to target only your platform.
- To enable other platforms (Android, iOS, etc.), uncomment the relevant lines in the scripts or project file.

## Manual Commands

- Build: `dotnet build HackathonMAUISetup.sln`
- Run (Windows): `dotnet run --project MauiVerifyApp/MauiVerifyApp.csproj --framework net9.0-windows10.0.19041.0`
- Run (Mac): `dotnet run --project MauiVerifyApp/MauiVerifyApp.csproj --framework net9.0-maccatalyst`

## Troubleshooting

- Ensure you have the correct .NET SDK and MAUI workload installed.
- If you change target frameworks, restore NuGet packages: `dotnet restore`.
