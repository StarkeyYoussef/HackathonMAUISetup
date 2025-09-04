# Build and run for Windows only
Write-Host "Updating target frameworks to Windows only..."
$projPath = "MauiVerifyApp/MauiVerifyApp.csproj"
(Get-Content $projPath) -replace '<TargetFrameworks>.*</TargetFrameworks>', '<TargetFrameworks>net9.0-windows10.0.19041.0</TargetFrameworks>' | Set-Content $projPath
Write-Host "Building..."
dotnet build HackathonMAUISetup.sln
Write-Host "Running app for Windows..."
dotnet run --project MauiVerifyApp/MauiVerifyApp.csproj --framework net9.0-windows10.0.19041.0
# To enable other platforms, edit <TargetFrameworks> in MauiVerifyApp.csproj and add e.g. net9.0-android;net9.0-ios
